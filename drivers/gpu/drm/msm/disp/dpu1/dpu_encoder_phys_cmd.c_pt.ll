; ModuleID = '/llk/IR/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_cmd.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_cmd.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type {}
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.dpu_enc_phys_init_params = type { ptr, ptr, ptr, i32, i32, ptr }
%struct.dpu_kms = type { %struct.msm_kms, ptr, i32, ptr, ptr, [2 x ptr], ptr, ptr, ptr, ptr, ptr, %struct.dpu_core_perf, %struct.drm_modeset_lock, %struct.drm_private_obj, %struct.dpu_rm, i8, [2 x ptr], ptr, i8, ptr, i8, %struct.dss_module_power, %struct.atomic_t, [2 x ptr], i32 }
%struct.msm_kms = type { ptr, ptr, i32, ptr, ptr, %struct.kthread_work, %struct.mutex, [8 x %struct.mutex], i32, [8 x %struct.msm_pending_timer] }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.msm_pending_timer = type { %struct.msm_hrtimer_work, ptr, ptr, i32 }
%struct.msm_hrtimer_work = type { %struct.hrtimer, %struct.kthread_work, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dpu_core_perf = type { ptr, ptr, ptr, ptr, i64, i64, %struct.dpu_core_perf_tune, i32, i64, i64, i64 }
%struct.dpu_core_perf_tune = type { i32, i64, i64 }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.dpu_rm = type { [7 x ptr], [7 x ptr], [6 x ptr], [7 x ptr], [4 x ptr], [3 x ptr], i32 }
%struct.dss_module_power = type { i32, ptr }
%struct.dpu_encoder_phys = type { ptr, ptr, %struct.dpu_encoder_phys_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.drm_display_mode, i32, i32, i32, ptr, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, [5 x %struct.dpu_encoder_irq] }
%struct.dpu_encoder_phys_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.dpu_encoder_irq = type { ptr, i32, i32, %struct.dpu_irq_callback }
%struct.dpu_irq_callback = type { %struct.list_head, ptr, ptr }
%struct.dpu_encoder_phys_cmd = type { %struct.dpu_encoder_phys, i32, i8, i32, %struct.atomic_t, %struct.wait_queue_head }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.sched_statistics = type {}
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.20 }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
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
%struct.dpu_encoder_virt_ops = type { ptr, ptr, ptr }
%struct.dpu_hw_pingpong = type { %struct.dpu_hw_blk, %struct.dpu_hw_blk_reg_map, i32, ptr, ptr, %struct.dpu_hw_pingpong_ops }
%struct.dpu_hw_blk = type {}
%struct.dpu_hw_blk_reg_map = type { ptr, i32, i32, i32, i32, i32 }
%struct.dpu_hw_pingpong_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dpu_hw_pp_vsync_info = type { i32, i32, i32, i32 }
%struct.dpu_hw_ctl = type { %struct.dpu_hw_blk, %struct.dpu_hw_blk_reg_map, i32, ptr, i32, ptr, i32, i32, i32, %struct.dpu_hw_ctl_ops }
%struct.dpu_hw_ctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dpu_ctl_cfg = type { [16 x i8], i32, i32, i32, i32, i32 }
%struct.dpu_pingpong_cfg = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.dpu_hw_intf = type { %struct.dpu_hw_blk, %struct.dpu_hw_blk_reg_map, i32, ptr, ptr, %struct.dpu_hw_intf_ops }
%struct.dpu_hw_intf_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dpu_intf_cfg = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dpu_encoder_wait_info = type { ptr, ptr, i64 }
%struct.dpu_hw_tear_check = type { i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.dpu_hw_intf_cfg = type { i32, i32, i32, i32, i32 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.dpu_crtc_state = type { %struct.drm_crtc_state, i8, i8, [2 x %struct.drm_rect], i64, %struct.dpu_core_perf_params, i32, [2 x %struct.dpu_crtc_mixer], i32, [2 x ptr], i32, i32 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.dpu_core_perf_params = type { i64, i64, i64 }
%struct.dpu_crtc_mixer = type { ptr, ptr, ptr, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"intf %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"\013[drm:%s:%d] [dpu error]failed to allocate\0A\00", align 1
@__func__.dpu_encoder_phys_cmd_init = private unnamed_addr constant [26 x i8] c"dpu_encoder_phys_cmd_init\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"ctl_start\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"pp_done\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"pp_rd_ptr\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"underrun\00", align 1
@dpu_encoder_phys_cmd_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"&phys_enc->pending_kickoff_wq\00", align 1
@dpu_encoder_phys_cmd_init.__key.7 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"&cmd_enc->pending_vblank_wq\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"enc%d intf%d created\0A\00", align 1
@__drm_debug = external dso_local local_unnamed_addr global i32, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.10 = private unnamed_addr constant [66 x i8] c"\013[drm:%s:%d] [dpu error]enc%d intf%d disable autorefresh failed\0A\00", align 1
@__func__.dpu_encoder_phys_cmd_prepare_commit = private unnamed_addr constant [36 x i8] c"dpu_encoder_phys_cmd_prepare_commit\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"enc%d intf%d disabled autorefresh\0A\00", align 1
@__tracepoint_dpu_enc_phys_cmd_connect_te = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@.str.13 = private unnamed_addr constant [39 x i8] c"\013[drm:%s:%d] [dpu error]invalid args\0A\00", align 1
@__func__.dpu_encoder_phys_cmd_mode_set = private unnamed_addr constant [30 x i8] c"dpu_encoder_phys_cmd_mode_set\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"enc%d intf%d caching mode:\0A\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"enc%d intf%d \0A\00", align 1
@.str.16 = private unnamed_addr constant [47 x i8] c"\013[drm:%s:%d] [dpu error]invalid phys encoder\0A\00", align 1
@__func__.dpu_encoder_phys_cmd_enable = private unnamed_addr constant [28 x i8] c"dpu_encoder_phys_cmd_enable\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"enc%d intf%d pp %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [42 x i8] c"\013[drm:%s:%d] [dpu error]already enabled\0A\00", align 1
@.str.19 = private unnamed_addr constant [42 x i8] c"\013[drm:%s:%d] [dpu error]invalid encoder\0A\00", align 1
@__func__.dpu_encoder_phys_cmd_disable = private unnamed_addr constant [29 x i8] c"dpu_encoder_phys_cmd_disable\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"id:%u pp:%d state:%d\0A\00", align 1
@.str.21 = private unnamed_addr constant [56 x i8] c"\013[drm:%s:%d] [dpu error]enc%d intf%d already disabled\0A\00", align 1
@__func__.dpu_encoder_phys_cmd_control_vblank_irq = private unnamed_addr constant [40 x i8] c"dpu_encoder_phys_cmd_control_vblank_irq\00", align 1
@.str.22 = private unnamed_addr constant [26 x i8] c"id:%u pp:%d enable=%s/%d\0A\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.25 = private unnamed_addr constant [49 x i8] c"vblank irq err id:%u pp:%d ret:%d, enable %s/%d\0A\00", align 1
@.str.26 = private unnamed_addr constant [71 x i8] c"\013[drm:%s:%d] [dpu error]enc%d intf%d ctl start interrupt wait failed\0A\00", align 1
@__func__._dpu_encoder_phys_cmd_wait_for_ctl_start = private unnamed_addr constant [41 x i8] c"_dpu_encoder_phys_cmd_wait_for_ctl_start\00", align 1
@__func__.dpu_encoder_phys_cmd_prepare_for_kickoff = private unnamed_addr constant [41 x i8] c"dpu_encoder_phys_cmd_prepare_for_kickoff\00", align 1
@.str.27 = private unnamed_addr constant [28 x i8] c"id:%u pp:%d pending_cnt:%d\0A\00", align 1
@.str.28 = private unnamed_addr constant [42 x i8] c"failed wait_for_idle: id:%u ret:%d pp:%d\0A\00", align 1
@.str.29 = private unnamed_addr constant [35 x i8] c"enc%d intf%d pp:%d pending_cnt %d\0A\00", align 1
@.str.30 = private unnamed_addr constant [51 x i8] c"id:%d pp:%d kickoff timeout %d cnt %d koff_cnt %d\0A\00", align 1
@__tracepoint_dpu_enc_phys_cmd_pdone_timeout = external dso_local global %struct.tracepoint, align 4
@.str.31 = private unnamed_addr constant [44 x i8] c"failed wait_for_idle: id:%u ret:%d intf:%d\0A\00", align 1
@__tracepoint_dpu_enc_phys_cmd_irq_ctrl = external dso_local global %struct.tracepoint, align 4
@.str.32 = private unnamed_addr constant [53 x i8] c"\013[drm:%s:%d] [dpu error]invalid arg(s), encoder %d\0A\00", align 1
@__func__.dpu_encoder_phys_cmd_enable_helper = private unnamed_addr constant [35 x i8] c"dpu_encoder_phys_cmd_enable_helper\00", align 1
@.str.33 = private unnamed_addr constant [49 x i8] c"\013[drm:%s:%d] [dpu error]invalid arg(s), enc %d\0A\00", align 1
@__func__._dpu_encoder_phys_cmd_pingpong_config = private unnamed_addr constant [38 x i8] c"_dpu_encoder_phys_cmd_pingpong_config\00", align 1
@.str.34 = private unnamed_addr constant [36 x i8] c"enc%d intf%d pp %d, enabling mode:\0A\00", align 1
@__func__.dpu_encoder_phys_cmd_tearcheck_config = private unnamed_addr constant [38 x i8] c"dpu_encoder_phys_cmd_tearcheck_config\00", align 1
@.str.35 = private unnamed_addr constant [38 x i8] c"enc%d intf%d tearcheck not supported\0A\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"vsync\00", align 1
@.str.37 = private unnamed_addr constant [36 x i8] c"enc%d intf%d invalid - vsync_hz %u\0A\00", align 1
@.str.38 = private unnamed_addr constant [64 x i8] c"enc%d intf%d tc %d vsync_clk_speed_hz %u vtotal %u vrefresh %u\0A\00", align 1
@.str.39 = private unnamed_addr constant [57 x i8] c"enc%d intf%d tc %d enable %u start_pos %u rd_ptr_irq %u\0A\00", align 1
@.str.40 = private unnamed_addr constant [70 x i8] c"enc%d intf%d tc %d hw_vsync_mode %u vsync_count %u vsync_init_val %u\0A\00", align 1
@.str.41 = private unnamed_addr constant [64 x i8] c"enc%d intf%d tc %d cfgheight %u thresh_start %u thresh_cont %u\0A\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c"ctl_start_irq\00", align 1
@__tracepoint_tracing_mark_write = external dso_local global %struct.tracepoint, align 4
@.str.43 = private unnamed_addr constant [12 x i8] c"pp_done_irq\00", align 1
@__tracepoint_dpu_enc_phys_cmd_pp_tx_done = external dso_local global %struct.tracepoint, align 4
@.str.44 = private unnamed_addr constant [11 x i8] c"rd_ptr_irq\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dpu_encoder_phys_cmd_init(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @__drm_debug, align 4
  %3 = and i32 %2, 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.dpu_enc_phys_init_params, ptr %0, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, -1
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str, i32 noundef %8) #11
  br label %9

9:                                                ; preds = %5, %1
  %10 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %11 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 456) #12
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.dpu_encoder_phys_cmd_init, i32 noundef 767) #13
  br label %109

15:                                               ; preds = %9
  %16 = load ptr, ptr %0, align 4
  %17 = getelementptr inbounds %struct.dpu_kms, ptr %16, i32 0, i32 17
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %11, i32 0, i32 4
  store ptr %18, ptr %19, align 8
  %20 = getelementptr inbounds %struct.dpu_enc_phys_init_params, ptr %0, i32 0, i32 4
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %11, i32 0, i32 12
  store i32 %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %11, i32 0, i32 2, i32 1
  store ptr @dpu_encoder_phys_cmd_prepare_commit, ptr %23, align 4
  %24 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %11, i32 0, i32 2, i32 2
  store ptr @dpu_encoder_phys_cmd_is_master, ptr %24, align 8
  %25 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %11, i32 0, i32 2, i32 4
  store ptr @dpu_encoder_phys_cmd_mode_set, ptr %25, align 8
  %26 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %11, i32 0, i32 2, i32 3
  store ptr @dpu_encoder_phys_cmd_mode_fixup, ptr %26, align 4
  %27 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %11, i32 0, i32 2, i32 5
  store ptr @dpu_encoder_phys_cmd_enable, ptr %27, align 4
  %28 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %11, i32 0, i32 2, i32 6
  store ptr @dpu_encoder_phys_cmd_disable, ptr %28, align 8
  %29 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %11, i32 0, i32 2, i32 8
  store ptr @dpu_encoder_phys_cmd_destroy, ptr %29, align 8
  %30 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %11, i32 0, i32 2, i32 9
  store ptr @dpu_encoder_phys_cmd_get_hw_resources, ptr %30, align 4
  %31 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %11, i32 0, i32 2, i32 10
  store ptr @dpu_encoder_phys_cmd_control_vblank_irq, ptr %31, align 8
  %32 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %11, i32 0, i32 2, i32 11
  store ptr @dpu_encoder_phys_cmd_wait_for_commit_done, ptr %32, align 4
  %33 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %11, i32 0, i32 2, i32 14
  store ptr @dpu_encoder_phys_cmd_prepare_for_kickoff, ptr %33, align 8
  %34 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %11, i32 0, i32 2, i32 12
  store ptr @dpu_encoder_phys_cmd_wait_for_tx_complete, ptr %34, align 8
  %35 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %11, i32 0, i32 2, i32 13
  store ptr @dpu_encoder_phys_cmd_wait_for_vblank, ptr %35, align 4
  %36 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %11, i32 0, i32 2, i32 16
  store ptr @dpu_encoder_phys_cmd_trigger_start, ptr %36, align 8
  %37 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %11, i32 0, i32 2, i32 17
  store ptr @dpu_encoder_phys_cmd_needs_single_flush, ptr %37, align 4
  %38 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %11, i32 0, i32 2, i32 18
  store ptr @dpu_encoder_phys_cmd_irq_control, ptr %38, align 8
  %39 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %11, i32 0, i32 2, i32 20
  store ptr @dpu_encoder_phys_cmd_enable_helper, ptr %39, align 8
  %40 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %11, i32 0, i32 2, i32 19
  store ptr @dpu_encoder_phys_cmd_prepare_idle_pc, ptr %40, align 4
  %41 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %11, i32 0, i32 2, i32 15
  store ptr @dpu_encoder_phys_cmd_handle_post_kickoff, ptr %41, align 4
  %42 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %11, i32 0, i32 2, i32 21
  store ptr @dpu_encoder_phys_cmd_get_line_count, ptr %42, align 4
  %43 = getelementptr inbounds %struct.dpu_enc_phys_init_params, ptr %0, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  store ptr %44, ptr %11, align 8
  %45 = getelementptr inbounds %struct.dpu_enc_phys_init_params, ptr %0, i32 0, i32 2
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %11, i32 0, i32 3
  store ptr %46, ptr %47, align 4
  %48 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %11, i32 0, i32 8
  store ptr %16, ptr %48, align 8
  %49 = getelementptr inbounds %struct.dpu_enc_phys_init_params, ptr %0, i32 0, i32 3
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %11, i32 0, i32 10
  store i32 %50, ptr %51, align 4
  %52 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %11, i32 0, i32 11
  store i32 1, ptr %52, align 8
  %53 = getelementptr inbounds %struct.dpu_enc_phys_init_params, ptr %0, i32 0, i32 5
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %11, i32 0, i32 13
  store ptr %54, ptr %55, align 8
  %56 = getelementptr inbounds %struct.dpu_encoder_phys_cmd, ptr %11, i32 0, i32 1
  store i32 0, ptr %56, align 4
  %57 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %11, i32 0, i32 14
  store i32 1, ptr %57, align 4
  %58 = getelementptr %struct.dpu_encoder_phys, ptr %11, i32 0, i32 21, i32 0, i32 3
  store volatile ptr %58, ptr %58, align 4
  %59 = getelementptr %struct.dpu_encoder_phys, ptr %11, i32 0, i32 21, i32 0, i32 3, i32 0, i32 1
  store ptr %58, ptr %59, align 8
  %60 = getelementptr %struct.dpu_encoder_phys, ptr %11, i32 0, i32 21, i32 0, i32 2
  store i32 -22, ptr %60, align 8
  %61 = getelementptr %struct.dpu_encoder_phys, ptr %11, i32 0, i32 21, i32 0, i32 3, i32 2
  store ptr %11, ptr %61, align 8
  %62 = getelementptr %struct.dpu_encoder_phys, ptr %11, i32 0, i32 21, i32 1, i32 3
  store volatile ptr %62, ptr %62, align 8
  %63 = getelementptr %struct.dpu_encoder_phys, ptr %11, i32 0, i32 21, i32 1, i32 3, i32 0, i32 1
  store ptr %62, ptr %63, align 4
  %64 = getelementptr %struct.dpu_encoder_phys, ptr %11, i32 0, i32 21, i32 1, i32 2
  store i32 -22, ptr %64, align 4
  %65 = getelementptr %struct.dpu_encoder_phys, ptr %11, i32 0, i32 21, i32 1, i32 3, i32 2
  store ptr %11, ptr %65, align 4
  %66 = getelementptr %struct.dpu_encoder_phys, ptr %11, i32 0, i32 21, i32 2, i32 3
  store volatile ptr %66, ptr %66, align 4
  %67 = getelementptr %struct.dpu_encoder_phys, ptr %11, i32 0, i32 21, i32 2, i32 3, i32 0, i32 1
  store ptr %66, ptr %67, align 8
  %68 = getelementptr %struct.dpu_encoder_phys, ptr %11, i32 0, i32 21, i32 2, i32 2
  store i32 -22, ptr %68, align 8
  %69 = getelementptr %struct.dpu_encoder_phys, ptr %11, i32 0, i32 21, i32 2, i32 3, i32 2
  store ptr %11, ptr %69, align 8
  %70 = getelementptr %struct.dpu_encoder_phys, ptr %11, i32 0, i32 21, i32 3, i32 3
  store volatile ptr %70, ptr %70, align 8
  %71 = getelementptr %struct.dpu_encoder_phys, ptr %11, i32 0, i32 21, i32 3, i32 3, i32 0, i32 1
  store ptr %70, ptr %71, align 4
  %72 = getelementptr %struct.dpu_encoder_phys, ptr %11, i32 0, i32 21, i32 3, i32 2
  store i32 -22, ptr %72, align 4
  %73 = getelementptr %struct.dpu_encoder_phys, ptr %11, i32 0, i32 21, i32 3, i32 3, i32 2
  store ptr %11, ptr %73, align 4
  %74 = getelementptr %struct.dpu_encoder_phys, ptr %11, i32 0, i32 21, i32 4, i32 3
  store volatile ptr %74, ptr %74, align 4
  %75 = getelementptr %struct.dpu_encoder_phys, ptr %11, i32 0, i32 21, i32 4, i32 3, i32 0, i32 1
  store ptr %74, ptr %75, align 8
  %76 = getelementptr %struct.dpu_encoder_phys, ptr %11, i32 0, i32 21, i32 4, i32 2
  store i32 -22, ptr %76, align 8
  %77 = getelementptr %struct.dpu_encoder_phys, ptr %11, i32 0, i32 21, i32 4, i32 3, i32 2
  store ptr %11, ptr %77, align 8
  %78 = getelementptr %struct.dpu_encoder_phys, ptr %11, i32 0, i32 21, i32 3
  store ptr @.str.2, ptr %78, align 4
  %79 = getelementptr %struct.dpu_encoder_phys, ptr %11, i32 0, i32 21, i32 3, i32 1
  store i32 3, ptr %79, align 8
  %80 = getelementptr %struct.dpu_encoder_phys, ptr %11, i32 0, i32 21, i32 3, i32 3, i32 1
  store ptr @dpu_encoder_phys_cmd_ctl_start_irq, ptr %80, align 8
  %81 = getelementptr %struct.dpu_encoder_phys, ptr %11, i32 0, i32 21, i32 1
  store ptr @.str.3, ptr %81, align 4
  %82 = getelementptr %struct.dpu_encoder_phys, ptr %11, i32 0, i32 21, i32 1, i32 1
  store i32 1, ptr %82, align 8
  %83 = getelementptr %struct.dpu_encoder_phys, ptr %11, i32 0, i32 21, i32 1, i32 3, i32 1
  store ptr @dpu_encoder_phys_cmd_pp_tx_done_irq, ptr %83, align 8
  %84 = getelementptr %struct.dpu_encoder_phys, ptr %11, i32 0, i32 21, i32 4
  store ptr @.str.4, ptr %84, align 8
  %85 = getelementptr %struct.dpu_encoder_phys, ptr %11, i32 0, i32 21, i32 4, i32 1
  store i32 4, ptr %85, align 4
  %86 = getelementptr %struct.dpu_encoder_phys, ptr %11, i32 0, i32 21, i32 4, i32 3, i32 1
  store ptr @dpu_encoder_phys_cmd_pp_rd_ptr_irq, ptr %86, align 4
  %87 = getelementptr %struct.dpu_encoder_phys, ptr %11, i32 0, i32 21, i32 2
  store ptr @.str.5, ptr %87, align 8
  %88 = getelementptr %struct.dpu_encoder_phys, ptr %11, i32 0, i32 21, i32 2, i32 1
  store i32 2, ptr %88, align 4
  %89 = getelementptr %struct.dpu_encoder_phys, ptr %11, i32 0, i32 21, i32 2, i32 3, i32 1
  store ptr @dpu_encoder_phys_cmd_underrun_irq, ptr %89, align 4
  %90 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %11, i32 0, i32 15
  store volatile i32 0, ptr %90, align 8
  %91 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %11, i32 0, i32 19
  store volatile i32 0, ptr %91, align 8
  %92 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %11, i32 0, i32 18
  store volatile i32 0, ptr %92, align 4
  %93 = getelementptr inbounds %struct.dpu_encoder_phys_cmd, ptr %11, i32 0, i32 4
  store volatile i32 0, ptr %93, align 8
  %94 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %11, i32 0, i32 20
  tail call void @__init_waitqueue_head(ptr noundef %94, ptr noundef nonnull @.str.6, ptr noundef nonnull @dpu_encoder_phys_cmd_init.__key) #11
  %95 = getelementptr inbounds %struct.dpu_encoder_phys_cmd, ptr %11, i32 0, i32 5
  tail call void @__init_waitqueue_head(ptr noundef %95, ptr noundef nonnull @.str.8, ptr noundef nonnull @dpu_encoder_phys_cmd_init.__key.7) #11
  %96 = load i32, ptr @__drm_debug, align 4
  %97 = and i32 %96, 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %109, label %99

99:                                               ; preds = %15
  %100 = load ptr, ptr %11, align 8
  %101 = icmp eq ptr %100, null
  br i1 %101, label %105, label %102

102:                                              ; preds = %99
  %103 = getelementptr inbounds %struct.drm_encoder, ptr %100, i32 0, i32 2
  %104 = load i32, ptr %103, align 4
  br label %105

105:                                              ; preds = %102, %99
  %106 = phi i32 [ %104, %102 ], [ -1, %99 ]
  %107 = load i32, ptr %22, align 4
  %108 = add i32 %107, -1
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.9, i32 noundef %106, i32 noundef %108) #11
  br label %109

109:                                              ; preds = %105, %15, %13
  %110 = phi ptr [ inttoptr (i32 -12 to ptr), %13 ], [ %11, %15 ], [ %11, %105 ]
  ret ptr %110
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_encoder_phys_cmd_ctl_start_irq(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call ptr @llvm.thread.pointer() #11
  %4 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 53
  %5 = load i32, ptr %4, align 4
  %6 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tracing_mark_write, i32 0, i32 1), align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %20

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
  br i1 %17, label %20, label %18

18:                                               ; preds = %8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !8
  %19 = tail call i32 @__traceiter_tracing_mark_write(ptr noundef null, i32 noundef %5, ptr noundef nonnull @.str.42, i1 noundef zeroext true) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  br label %20

20:                                               ; preds = %18, %8, %2
  %21 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %21) #11, !srcloc !11
  %22 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %21, ptr %21, i32 0, i32 -1, ptr elementtype(i32) %21) #11, !srcloc !12
  %23 = extractvalue { i32, i32, i32 } %22, 0
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !13
  br label %26

26:                                               ; preds = %25, %20
  %27 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 20
  tail call void @__wake_up(ptr noundef %27, i32 noundef 3, i32 noundef 0, ptr noundef null) #11
  %28 = load i32, ptr %4, align 4
  %29 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tracing_mark_write, i32 0, i32 1), align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %33 = load i32, ptr %32, align 8
  %34 = lshr i32 %33, 5
  %35 = getelementptr i32, ptr @__cpu_online_mask, i32 %34
  %36 = load volatile i32, ptr %35, align 4
  %37 = and i32 %33, 31
  %38 = shl nuw i32 1, %37
  %39 = and i32 %38, %36
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %31
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !8
  %42 = tail call i32 @__traceiter_tracing_mark_write(ptr noundef null, i32 noundef %28, ptr noundef nonnull @.str.42, i1 noundef zeroext false) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  br label %43

43:                                               ; preds = %41, %31, %26
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_encoder_phys_cmd_pp_tx_done_irq(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %87, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @llvm.thread.pointer() #11
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
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !8
  %23 = tail call i32 @__traceiter_tracing_mark_write(ptr noundef null, i32 noundef %9, ptr noundef nonnull @.str.43, i1 noundef zeroext true) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  br label %24

24:                                               ; preds = %22, %12, %6
  %25 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.dpu_encoder_virt_ops, ptr %26, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %24
  %31 = load ptr, ptr %0, align 4
  tail call void %28(ptr noundef %31, ptr noundef %0, i32 noundef 1) #11
  br label %32

32:                                               ; preds = %30, %24
  %33 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 13
  %34 = load ptr, ptr %33, align 4
  %35 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %34) #11
  %36 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %36) #11, !srcloc !11
  %37 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %36, ptr %36, i32 0, i32 -1, ptr elementtype(i32) %36) #11, !srcloc !12
  %38 = extractvalue { i32, i32, i32 } %37, 0
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !13
  br label %41

41:                                               ; preds = %40, %32
  %42 = icmp ne i32 %38, 0
  %43 = zext i1 %42 to i32
  %44 = load ptr, ptr %33, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %44, i32 noundef %35) #11
  %45 = load ptr, ptr %0, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.drm_encoder, ptr %45, i32 0, i32 2
  %49 = load i32, ptr %48, align 4
  br label %50

50:                                               ; preds = %47, %41
  %51 = phi i32 [ %49, %47 ], [ -1, %41 ]
  %52 = load ptr, ptr %3, align 4
  %53 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %52, i32 0, i32 2
  %54 = load i32, ptr %53, align 4
  %55 = add i32 %54, -1
  %56 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_phys_cmd_pp_tx_done, i32 0, i32 1), align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %50
  %59 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %60 = load i32, ptr %59, align 8
  %61 = lshr i32 %60, 5
  %62 = getelementptr i32, ptr @__cpu_online_mask, i32 %61
  %63 = load volatile i32, ptr %62, align 4
  %64 = and i32 %60, 31
  %65 = shl nuw i32 1, %64
  %66 = and i32 %65, %63
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %58
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !14
  %69 = tail call i32 @__traceiter_dpu_enc_phys_cmd_pp_tx_done(ptr noundef null, i32 noundef %51, i32 noundef %55, i32 noundef %43, i32 noundef 1) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !15
  br label %70

70:                                               ; preds = %68, %58, %50
  %71 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 20
  tail call void @__wake_up(ptr noundef %71, i32 noundef 3, i32 noundef 0, ptr noundef null) #11
  %72 = load i32, ptr %8, align 4
  %73 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tracing_mark_write, i32 0, i32 1), align 4
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %87

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %77 = load i32, ptr %76, align 8
  %78 = lshr i32 %77, 5
  %79 = getelementptr i32, ptr @__cpu_online_mask, i32 %78
  %80 = load volatile i32, ptr %79, align 4
  %81 = and i32 %77, 31
  %82 = shl nuw i32 1, %81
  %83 = and i32 %82, %80
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %75
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !8
  %86 = tail call i32 @__traceiter_tracing_mark_write(ptr noundef null, i32 noundef %72, ptr noundef nonnull @.str.43, i1 noundef zeroext false) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  br label %87

87:                                               ; preds = %85, %75, %70, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_encoder_phys_cmd_pp_rd_ptr_irq(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %54, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @llvm.thread.pointer() #11
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
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !8
  %23 = tail call i32 @__traceiter_tracing_mark_write(ptr noundef null, i32 noundef %9, ptr noundef nonnull @.str.44, i1 noundef zeroext true) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  br label %24

24:                                               ; preds = %22, %12, %6
  %25 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %24
  %30 = load ptr, ptr %0, align 4
  tail call void %27(ptr noundef %30, ptr noundef %0) #11
  br label %31

31:                                               ; preds = %29, %24
  %32 = getelementptr inbounds %struct.dpu_encoder_phys_cmd, ptr %0, i32 0, i32 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %32) #11, !srcloc !11
  %33 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %32, ptr %32, i32 0, i32 -1, ptr elementtype(i32) %32) #11, !srcloc !12
  %34 = extractvalue { i32, i32, i32 } %33, 0
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !13
  br label %37

37:                                               ; preds = %36, %31
  %38 = getelementptr inbounds %struct.dpu_encoder_phys_cmd, ptr %0, i32 0, i32 5
  tail call void @__wake_up(ptr noundef %38, i32 noundef 3, i32 noundef 0, ptr noundef null) #11
  %39 = load i32, ptr %8, align 4
  %40 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tracing_mark_write, i32 0, i32 1), align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %44 = load i32, ptr %43, align 8
  %45 = lshr i32 %44, 5
  %46 = getelementptr i32, ptr @__cpu_online_mask, i32 %45
  %47 = load volatile i32, ptr %46, align 4
  %48 = and i32 %44, 31
  %49 = shl nuw i32 1, %48
  %50 = and i32 %49, %47
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %42
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !8
  %53 = tail call i32 @__traceiter_tracing_mark_write(ptr noundef null, i32 noundef %39, ptr noundef nonnull @.str.44, i1 noundef zeroext false) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  br label %54

54:                                               ; preds = %52, %42, %37, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_encoder_phys_cmd_underrun_irq(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dpu_encoder_virt_ops, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %0, align 4
  tail call void %6(ptr noundef %9, ptr noundef %0) #11
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_encoder_phys_cmd_prepare_commit(ptr noundef readonly %0) #0 {
  %2 = alloca %struct.dpu_hw_pp_vsync_info, align 4
  %3 = icmp eq ptr %0, null
  br i1 %3, label %142, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %142, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 10
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %142, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %6, i32 0, i32 5, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = tail call zeroext i1 %14(ptr noundef nonnull %6, ptr noundef null) #11
  br i1 %15, label %16, label %142

16:                                               ; preds = %12
  %17 = load ptr, ptr %5, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %54, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %17, i32 0, i32 5, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %54, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr %0, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.drm_encoder, ptr %24, i32 0, i32 2
  %28 = load i32, ptr %27, align 4
  br label %29

29:                                               ; preds = %26, %23
  %30 = phi i32 [ %28, %26 ], [ -1, %23 ]
  %31 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_phys_cmd_connect_te, i32 0, i32 1), align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %49

33:                                               ; preds = %29
  %34 = tail call ptr @llvm.thread.pointer() #11
  %35 = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 2
  %36 = load i32, ptr %35, align 8
  %37 = lshr i32 %36, 5
  %38 = getelementptr i32, ptr @__cpu_online_mask, i32 %37
  %39 = load volatile i32, ptr %38, align 4
  %40 = and i32 %36, 31
  %41 = shl nuw i32 1, %40
  %42 = and i32 %41, %39
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %33
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !16
  %45 = tail call i32 @__traceiter_dpu_enc_phys_cmd_connect_te(ptr noundef null, i32 noundef %30, i1 noundef zeroext false) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !17
  %46 = load ptr, ptr %5, align 4
  %47 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %46, i32 0, i32 5, i32 2
  %48 = load ptr, ptr %47, align 4
  br label %49

49:                                               ; preds = %44, %33, %29
  %50 = phi ptr [ %21, %29 ], [ %21, %33 ], [ %48, %44 ]
  %51 = phi ptr [ %17, %29 ], [ %17, %33 ], [ %46, %44 ]
  %52 = tail call i32 %50(ptr noundef %51, i1 noundef zeroext false) #11
  %53 = load ptr, ptr %5, align 4
  br label %54

54:                                               ; preds = %49, %19, %16
  %55 = phi ptr [ null, %16 ], [ %17, %19 ], [ %53, %49 ]
  %56 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %55, i32 0, i32 5, i32 4
  %57 = load ptr, ptr %56, align 4
  tail call void %57(ptr noundef %55, i32 noundef 0, i1 noundef zeroext false) #11
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %58(i32 noundef 429496000) #11
  %59 = getelementptr inbounds %struct.dpu_hw_pp_vsync_info, ptr %2, i32 0, i32 3
  %60 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 9, i32 6
  br label %73

61:                                               ; preds = %87
  %62 = load ptr, ptr %0, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.drm_encoder, ptr %62, i32 0, i32 2
  %66 = load i32, ptr %65, align 4
  br label %67

67:                                               ; preds = %64, %61
  %68 = phi i32 [ %66, %64 ], [ -1, %61 ]
  %69 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 12
  %70 = load i32, ptr %69, align 4
  %71 = add i32 %70, -1
  %72 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.dpu_encoder_phys_cmd_prepare_commit, i32 noundef 627, i32 noundef %68, i32 noundef %71) #13
  br label %90

73:                                               ; preds = %87, %54
  %74 = phi i32 [ 0, %54 ], [ %75, %87 ]
  %75 = add nuw nsw i32 %74, 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i32 16, i1 false) #11, !annotation !18
  %76 = load ptr, ptr %5, align 4
  %77 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %76, i32 0, i32 5, i32 3
  %78 = load ptr, ptr %77, align 4
  %79 = call i32 %78(ptr noundef %76, ptr noundef nonnull %2) #11
  %80 = load i32, ptr %59, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %73
  %83 = load i16, ptr %60, align 2
  %84 = zext i16 %83 to i32
  %85 = icmp ult i32 %80, %84
  br i1 %85, label %87, label %86

86:                                               ; preds = %82, %73
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #11
  br label %90

87:                                               ; preds = %82
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #11
  %88 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %88(i32 noundef 429496000) #11
  %89 = icmp eq i32 %75, 43
  br i1 %89, label %61, label %73

90:                                               ; preds = %86, %67
  %91 = load ptr, ptr %5, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %127, label %93

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %91, i32 0, i32 5, i32 2
  %95 = load ptr, ptr %94, align 4
  %96 = icmp eq ptr %95, null
  br i1 %96, label %127, label %97

97:                                               ; preds = %93
  %98 = load ptr, ptr %0, align 4
  %99 = icmp eq ptr %98, null
  br i1 %99, label %103, label %100

100:                                              ; preds = %97
  %101 = getelementptr inbounds %struct.drm_encoder, ptr %98, i32 0, i32 2
  %102 = load i32, ptr %101, align 4
  br label %103

103:                                              ; preds = %100, %97
  %104 = phi i32 [ %102, %100 ], [ -1, %97 ]
  %105 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_phys_cmd_connect_te, i32 0, i32 1), align 4
  %106 = icmp sgt i32 %105, 0
  br i1 %106, label %107, label %123

107:                                              ; preds = %103
  %108 = tail call ptr @llvm.thread.pointer() #11
  %109 = getelementptr inbounds %struct.thread_info, ptr %108, i32 0, i32 2
  %110 = load i32, ptr %109, align 8
  %111 = lshr i32 %110, 5
  %112 = getelementptr i32, ptr @__cpu_online_mask, i32 %111
  %113 = load volatile i32, ptr %112, align 4
  %114 = and i32 %110, 31
  %115 = shl nuw i32 1, %114
  %116 = and i32 %115, %113
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %123, label %118

118:                                              ; preds = %107
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !16
  %119 = call i32 @__traceiter_dpu_enc_phys_cmd_connect_te(ptr noundef null, i32 noundef %104, i1 noundef zeroext true) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !17
  %120 = load ptr, ptr %5, align 4
  %121 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %120, i32 0, i32 5, i32 2
  %122 = load ptr, ptr %121, align 4
  br label %123

123:                                              ; preds = %118, %107, %103
  %124 = phi ptr [ %95, %103 ], [ %95, %107 ], [ %122, %118 ]
  %125 = phi ptr [ %91, %103 ], [ %91, %107 ], [ %120, %118 ]
  %126 = call i32 %124(ptr noundef %125, i1 noundef zeroext true) #11
  br label %127

127:                                              ; preds = %123, %93, %90
  %128 = load i32, ptr @__drm_debug, align 4
  %129 = and i32 %128, 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %142, label %131

131:                                              ; preds = %127
  %132 = load ptr, ptr %0, align 4
  %133 = icmp eq ptr %132, null
  br i1 %133, label %137, label %134

134:                                              ; preds = %131
  %135 = getelementptr inbounds %struct.drm_encoder, ptr %132, i32 0, i32 2
  %136 = load i32, ptr %135, align 4
  br label %137

137:                                              ; preds = %134, %131
  %138 = phi i32 [ %136, %134 ], [ -1, %131 ]
  %139 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 12
  %140 = load i32, ptr %139, align 4
  %141 = add i32 %140, -1
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.11, i32 noundef %138, i32 noundef %141) #11
  br label %142

142:                                              ; preds = %137, %127, %12, %8, %4, %1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i1 @dpu_encoder_phys_cmd_is_master(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 10
  %3 = load i32, ptr %2, align 4
  %4 = icmp ne i32 %3, 2
  ret i1 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_encoder_phys_cmd_mode_set(ptr noundef %0, ptr noundef readnone %1, ptr noundef %2) #0 {
  %4 = icmp ne ptr %1, null
  %5 = icmp ne ptr %2, null
  %6 = and i1 %4, %5
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.dpu_encoder_phys_cmd_mode_set, i32 noundef 157) #13
  br label %56

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 9
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(112) %10, ptr noundef nonnull align 4 dereferenceable(112) %2, i32 112, i1 false)
  %11 = load i32, ptr @__drm_debug, align 4
  %12 = and i32 %11, 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %30, label %14

14:                                               ; preds = %9
  %15 = icmp eq ptr %0, null
  br i1 %15, label %27, label %16

16:                                               ; preds = %14
  %17 = load ptr, ptr %0, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.drm_encoder, ptr %17, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  br label %22

22:                                               ; preds = %19, %16
  %23 = phi i32 [ -1, %16 ], [ %21, %19 ]
  %24 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 12
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, -1
  br label %27

27:                                               ; preds = %22, %14
  %28 = phi i32 [ %23, %22 ], [ -1, %14 ]
  %29 = phi i32 [ %26, %22 ], [ -1, %14 ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.14, i32 noundef %28, i32 noundef %29) #11
  br label %30

30:                                               ; preds = %27, %9
  tail call void @drm_mode_debug_printmodeline(ptr noundef nonnull %2) #11
  %31 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 5
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %32, i32 0, i32 3
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.dpu_ctl_cfg, ptr %34, i32 0, i32 5
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr %struct.dpu_encoder_phys, ptr %0, i32 0, i32 21, i32 3, i32 2
  store i32 %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 6
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %39, i32 0, i32 3
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.dpu_pingpong_cfg, ptr %41, i32 0, i32 6
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr %struct.dpu_encoder_phys, ptr %0, i32 0, i32 21, i32 1, i32 2
  store i32 %43, ptr %44, align 4
  %45 = load ptr, ptr %40, align 4
  %46 = getelementptr inbounds %struct.dpu_pingpong_cfg, ptr %45, i32 0, i32 7
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr %struct.dpu_encoder_phys, ptr %0, i32 0, i32 21, i32 4, i32 2
  store i32 %47, ptr %48, align 4
  %49 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 7
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.dpu_hw_intf, ptr %50, i32 0, i32 3
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.dpu_intf_cfg, ptr %52, i32 0, i32 8
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr %struct.dpu_encoder_phys, ptr %0, i32 0, i32 21, i32 2, i32 2
  store i32 %54, ptr %55, align 4
  br label %56

56:                                               ; preds = %30, %7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @dpu_encoder_phys_cmd_mode_fixup(ptr noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #0 {
  %4 = load i32, ptr @__drm_debug, align 4
  %5 = and i32 %4, 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %23, label %7

7:                                                ; preds = %3
  %8 = icmp eq ptr %0, null
  br i1 %8, label %20, label %9

9:                                                ; preds = %7
  %10 = load ptr, ptr %0, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.drm_encoder, ptr %10, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  br label %15

15:                                               ; preds = %12, %9
  %16 = phi i32 [ -1, %9 ], [ %14, %12 ]
  %17 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 12
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, -1
  br label %20

20:                                               ; preds = %15, %7
  %21 = phi i32 [ %16, %15 ], [ -1, %7 ]
  %22 = phi i32 [ %19, %15 ], [ -1, %7 ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.15, i32 noundef %21, i32 noundef %22) #11
  br label %23

23:                                               ; preds = %20, %3
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_encoder_phys_cmd_enable(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.dpu_encoder_phys_cmd_enable, i32 noundef 457) #13
  br label %37

7:                                                ; preds = %1
  %8 = load i32, ptr @__drm_debug, align 4
  %9 = and i32 %8, 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %30, label %11

11:                                               ; preds = %7
  %12 = icmp eq ptr %0, null
  br i1 %12, label %24, label %13

13:                                               ; preds = %11
  %14 = load ptr, ptr %0, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.drm_encoder, ptr %14, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  br label %19

19:                                               ; preds = %16, %13
  %20 = phi i32 [ -1, %13 ], [ %18, %16 ]
  %21 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 12
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, -1
  br label %24

24:                                               ; preds = %19, %11
  %25 = phi i32 [ %20, %19 ], [ -1, %11 ]
  %26 = phi i32 [ %23, %19 ], [ -1, %11 ]
  %27 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %3, i32 0, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, -1
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.17, i32 noundef %25, i32 noundef %26, i32 noundef %29) #11
  br label %30

30:                                               ; preds = %24, %7
  %31 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 14
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 3
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.dpu_encoder_phys_cmd_enable, i32 noundef 464) #13
  br label %37

36:                                               ; preds = %30
  tail call void @dpu_encoder_phys_cmd_enable_helper(ptr noundef %0)
  store i32 3, ptr %31, align 4
  br label %37

37:                                               ; preds = %36, %34, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_encoder_phys_cmd_disable(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.dpu_encoder_phys_cmd_disable, i32 noundef 512) #13
  br label %47

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.drm_encoder, ptr %8, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  br label %13

13:                                               ; preds = %10, %7
  %14 = phi i32 [ %12, %10 ], [ -1, %7 ]
  %15 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %3, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, -1
  %18 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 14
  %19 = load i32, ptr %18, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.20, i32 noundef %14, i32 noundef %17, i32 noundef %19) #11
  %20 = load i32, ptr %18, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %39

22:                                               ; preds = %13
  %23 = icmp eq ptr %0, null
  br i1 %23, label %35, label %24

24:                                               ; preds = %22
  %25 = load ptr, ptr %0, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.drm_encoder, ptr %25, i32 0, i32 2
  %29 = load i32, ptr %28, align 4
  br label %30

30:                                               ; preds = %27, %24
  %31 = phi i32 [ -1, %24 ], [ %29, %27 ]
  %32 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 12
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %33, -1
  br label %35

35:                                               ; preds = %30, %22
  %36 = phi i32 [ %31, %30 ], [ -1, %22 ]
  %37 = phi i32 [ %34, %30 ], [ -1, %22 ]
  %38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.dpu_encoder_phys_cmd_disable, i32 noundef 520, i32 noundef %36, i32 noundef %37) #13
  br label %47

39:                                               ; preds = %13
  %40 = load ptr, ptr %2, align 4
  %41 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %40, i32 0, i32 5, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %39
  %45 = tail call i32 %42(ptr noundef %40, i1 noundef zeroext false) #11
  br label %46

46:                                               ; preds = %44, %39
  store i32 1, ptr %18, align 4
  br label %47

47:                                               ; preds = %46, %35, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_encoder_phys_cmd_destroy(ptr noundef %0) #0 {
  tail call void @kfree(ptr noundef %0) #11
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @dpu_encoder_phys_cmd_get_hw_resources(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #6 {
  %3 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 12
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, -1
  %6 = getelementptr [8 x i32], ptr %1, i32 0, i32 %5
  store i32 1, ptr %6, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dpu_encoder_phys_cmd_control_vblank_irq(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.dpu_encoder_phys_cmd_control_vblank_irq, i32 noundef 259) #13
  br label %59

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 15
  %10 = load volatile i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 10
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %59, label %14

14:                                               ; preds = %8
  %15 = xor i1 %1, true
  %16 = icmp eq i32 %10, 0
  %17 = select i1 %15, i1 %16, i1 false
  br i1 %17, label %45, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr %0, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.drm_encoder, ptr %19, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  br label %24

24:                                               ; preds = %21, %18
  %25 = phi i32 [ %23, %21 ], [ -1, %18 ]
  %26 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %4, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, -1
  %29 = select i1 %1, ptr @.str.23, ptr @.str.24
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.22, i32 noundef %25, i32 noundef %28, ptr noundef nonnull %29, i32 noundef %10) #11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #11
  br i1 %1, label %30, label %36

30:                                               ; preds = %24
  %31 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 1, ptr elementtype(i32) %9) #11, !srcloc !19
  %32 = extractvalue { i32, i32 } %31, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !20
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %59

34:                                               ; preds = %30
  %35 = tail call i32 @dpu_encoder_helper_register_irq(ptr noundef %0, i32 noundef 4) #11
  br label %42

36:                                               ; preds = %24
  %37 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 1, ptr elementtype(i32) %9) #11, !srcloc !21
  %38 = extractvalue { i32, i32 } %37, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !22
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %59

40:                                               ; preds = %36
  %41 = tail call i32 @dpu_encoder_helper_unregister_irq(ptr noundef %0, i32 noundef 4) #11
  br label %42

42:                                               ; preds = %40, %34
  %43 = phi i32 [ %35, %34 ], [ %41, %40 ]
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %59, label %45

45:                                               ; preds = %42, %14
  %46 = phi i32 [ %43, %42 ], [ -22, %14 ]
  %47 = load ptr, ptr %0, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.drm_encoder, ptr %47, i32 0, i32 2
  %51 = load i32, ptr %50, align 4
  br label %52

52:                                               ; preds = %49, %45
  %53 = phi i32 [ %51, %49 ], [ -1, %45 ]
  %54 = load ptr, ptr %3, align 4
  %55 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %54, i32 0, i32 2
  %56 = load i32, ptr %55, align 4
  %57 = add i32 %56, -1
  %58 = select i1 %1, ptr @.str.23, ptr @.str.24
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.25, i32 noundef %53, i32 noundef %57, i32 noundef %46, ptr noundef nonnull %58, i32 noundef %10) #11
  br label %59

59:                                               ; preds = %52, %42, %36, %30, %8, %6
  %60 = phi i32 [ -22, %6 ], [ %46, %52 ], [ 0, %42 ], [ 0, %36 ], [ 0, %8 ], [ 0, %30 ]
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dpu_encoder_phys_cmd_wait_for_commit_done(ptr noundef %0) #0 {
  %2 = alloca %struct.dpu_encoder_wait_info, align 8
  %3 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 10
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 2
  br i1 %5, label %32, label %6

6:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #11
  %7 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 20
  store ptr %7, ptr %2, align 8
  %8 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 18
  %9 = getelementptr inbounds %struct.dpu_encoder_wait_info, ptr %2, i32 0, i32 1
  store ptr %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.dpu_encoder_wait_info, ptr %2, i32 0, i32 2
  store i64 84, ptr %10, align 8
  %11 = call i32 @dpu_encoder_helper_wait_for_irq(ptr noundef %0, i32 noundef 3, ptr noundef nonnull %2) #11
  %12 = icmp eq i32 %11, -110
  br i1 %12, label %13, label %30

13:                                               ; preds = %6
  %14 = icmp eq ptr %0, null
  br i1 %14, label %26, label %15

15:                                               ; preds = %13
  %16 = load ptr, ptr %0, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.drm_encoder, ptr %16, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  br label %21

21:                                               ; preds = %18, %15
  %22 = phi i32 [ -1, %15 ], [ %20, %18 ]
  %23 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 12
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, -1
  br label %26

26:                                               ; preds = %21, %13
  %27 = phi i32 [ %22, %21 ], [ -1, %13 ]
  %28 = phi i32 [ %25, %21 ], [ -1, %13 ]
  %29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @__func__._dpu_encoder_phys_cmd_wait_for_ctl_start, i32 noundef 655, i32 noundef %27, i32 noundef %28) #13
  br label %30

30:                                               ; preds = %26, %6
  %31 = phi i32 [ -22, %26 ], [ %11, %6 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #11
  br label %32

32:                                               ; preds = %30, %1
  %33 = phi i32 [ %31, %30 ], [ 0, %1 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_encoder_phys_cmd_prepare_for_kickoff(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.dpu_encoder_phys_cmd_prepare_for_kickoff, i32 noundef 552) #13
  br label %59

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.drm_encoder, ptr %8, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  br label %13

13:                                               ; preds = %10, %7
  %14 = phi i32 [ %12, %10 ], [ -1, %7 ]
  %15 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %3, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, -1
  %18 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 19
  %19 = load volatile i32, ptr %18, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.27, i32 noundef %14, i32 noundef %17, i32 noundef %19) #11
  %20 = tail call fastcc i32 @_dpu_encoder_phys_cmd_wait_for_idle(ptr noundef %0)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %34, label %22

22:                                               ; preds = %13
  store volatile i32 0, ptr %18, align 4
  %23 = load ptr, ptr %0, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.drm_encoder, ptr %23, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  br label %28

28:                                               ; preds = %25, %22
  %29 = phi i32 [ %27, %25 ], [ -1, %22 ]
  %30 = load ptr, ptr %2, align 4
  %31 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %30, i32 0, i32 2
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, -1
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.28, i32 noundef %29, i32 noundef %20, i32 noundef %33) #11
  br label %34

34:                                               ; preds = %28, %13
  %35 = load i32, ptr @__drm_debug, align 4
  %36 = and i32 %35, 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %59, label %38

38:                                               ; preds = %34
  %39 = icmp eq ptr %0, null
  br i1 %39, label %51, label %40

40:                                               ; preds = %38
  %41 = load ptr, ptr %0, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.drm_encoder, ptr %41, i32 0, i32 2
  %45 = load i32, ptr %44, align 4
  br label %46

46:                                               ; preds = %43, %40
  %47 = phi i32 [ -1, %40 ], [ %45, %43 ]
  %48 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 12
  %49 = load i32, ptr %48, align 4
  %50 = add i32 %49, -1
  br label %51

51:                                               ; preds = %46, %38
  %52 = phi i32 [ %47, %46 ], [ -1, %38 ]
  %53 = phi i32 [ %50, %46 ], [ -1, %38 ]
  %54 = load ptr, ptr %2, align 4
  %55 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %54, i32 0, i32 2
  %56 = load i32, ptr %55, align 4
  %57 = add i32 %56, -1
  %58 = load volatile i32, ptr %18, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.29, i32 noundef %52, i32 noundef %53, i32 noundef %57, i32 noundef %58) #11
  br label %59

59:                                               ; preds = %51, %34, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dpu_encoder_phys_cmd_wait_for_tx_complete(ptr noundef %0) #0 {
  %2 = tail call fastcc i32 @_dpu_encoder_phys_cmd_wait_for_idle(ptr noundef %0)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %15, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.drm_encoder, ptr %5, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  br label %10

10:                                               ; preds = %7, %4
  %11 = phi i32 [ %9, %7 ], [ -1, %4 ]
  %12 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 12
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, -1
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.31, i32 noundef %11, i32 noundef %2, i32 noundef %14) #11
  br label %15

15:                                               ; preds = %10, %1
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dpu_encoder_phys_cmd_wait_for_vblank(ptr noundef %0) #0 {
  %2 = alloca %struct.dpu_encoder_wait_info, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #11
  %3 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 10
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 2
  br i1 %5, label %13, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.dpu_encoder_phys_cmd, ptr %0, i32 0, i32 5
  store ptr %7, ptr %2, align 8
  %8 = getelementptr inbounds %struct.dpu_encoder_phys_cmd, ptr %0, i32 0, i32 4
  %9 = getelementptr inbounds %struct.dpu_encoder_wait_info, ptr %2, i32 0, i32 1
  store ptr %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.dpu_encoder_wait_info, ptr %2, i32 0, i32 2
  store i64 84, ptr %10, align 8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %8) #11, !srcloc !11
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %8, ptr %8, i32 1, ptr elementtype(i32) %8) #11, !srcloc !23
  %12 = call i32 @dpu_encoder_helper_wait_for_irq(ptr noundef %0, i32 noundef 4, ptr noundef nonnull %2) #11
  br label %13

13:                                               ; preds = %6, %1
  %14 = phi i32 [ %12, %6 ], [ 0, %1 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #11
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_encoder_phys_cmd_trigger_start(ptr noundef %0) #0 {
  tail call void @dpu_encoder_helper_trigger_start(ptr noundef %0) #11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @dpu_encoder_phys_cmd_needs_single_flush(ptr nocapture noundef readnone %0) #7 {
  ret i1 false
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_encoder_phys_cmd_irq_control(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.drm_encoder, ptr %3, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  br label %8

8:                                                ; preds = %5, %2
  %9 = phi i32 [ %7, %5 ], [ -1, %2 ]
  %10 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 6
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %11, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, -1
  %15 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 15
  %16 = load volatile i32, ptr %15, align 4
  %17 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_phys_cmd_irq_ctrl, i32 0, i32 1), align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %8
  %20 = tail call ptr @llvm.thread.pointer() #11
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
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !24
  %31 = tail call i32 @__traceiter_dpu_enc_phys_cmd_irq_ctrl(ptr noundef null, i32 noundef %9, i32 noundef %14, i1 noundef zeroext %1, i32 noundef %16) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !25
  br label %32

32:                                               ; preds = %30, %19, %8
  br i1 %1, label %33, label %42

33:                                               ; preds = %32
  %34 = tail call i32 @dpu_encoder_helper_register_irq(ptr noundef %0, i32 noundef 1) #11
  %35 = tail call i32 @dpu_encoder_helper_register_irq(ptr noundef %0, i32 noundef 2) #11
  %36 = tail call i32 @dpu_encoder_phys_cmd_control_vblank_irq(ptr noundef %0, i1 noundef zeroext true)
  %37 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 10
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 2
  br i1 %39, label %52, label %40

40:                                               ; preds = %33
  %41 = tail call i32 @dpu_encoder_helper_register_irq(ptr noundef %0, i32 noundef 3) #11
  br label %52

42:                                               ; preds = %32
  %43 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 10
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 2
  br i1 %45, label %48, label %46

46:                                               ; preds = %42
  %47 = tail call i32 @dpu_encoder_helper_unregister_irq(ptr noundef %0, i32 noundef 3) #11
  br label %48

48:                                               ; preds = %46, %42
  %49 = tail call i32 @dpu_encoder_helper_unregister_irq(ptr noundef %0, i32 noundef 2) #11
  %50 = tail call i32 @dpu_encoder_phys_cmd_control_vblank_irq(ptr noundef %0, i1 noundef zeroext false)
  %51 = tail call i32 @dpu_encoder_helper_unregister_irq(ptr noundef %0, i32 noundef 1) #11
  br label %52

52:                                               ; preds = %48, %40, %33
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_encoder_phys_cmd_enable_helper(ptr noundef %0) #0 {
  %2 = alloca %struct.dpu_hw_tear_check, align 4
  %3 = alloca %struct.dpu_hw_intf_cfg, align 4
  %4 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = icmp ne ptr %0, null
  %9 = zext i1 %8 to i32
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @__func__.dpu_encoder_phys_cmd_enable_helper, i32 noundef 436, i32 noundef %9) #13
  br label %291

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 12
  %13 = load i32, ptr %12, align 4
  tail call void @dpu_encoder_helper_split_config(ptr noundef %0, i32 noundef %13) #11
  %14 = load ptr, ptr %4, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 5
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %18, i32 0, i32 9, i32 9
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %16, %11
  %23 = icmp ne ptr %0, null
  %24 = zext i1 %23 to i32
  %25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @__func__._dpu_encoder_phys_cmd_pingpong_config, i32 noundef 408, i32 noundef %24) #13
  br label %281

26:                                               ; preds = %16
  %27 = load i32, ptr @__drm_debug, align 4
  %28 = and i32 %27, 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %48, label %30

30:                                               ; preds = %26
  %31 = icmp eq ptr %0, null
  br i1 %31, label %42, label %32

32:                                               ; preds = %30
  %33 = load ptr, ptr %0, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.drm_encoder, ptr %33, i32 0, i32 2
  %37 = load i32, ptr %36, align 4
  br label %38

38:                                               ; preds = %35, %32
  %39 = phi i32 [ -1, %32 ], [ %37, %35 ]
  %40 = load i32, ptr %12, align 4
  %41 = add i32 %40, -1
  br label %42

42:                                               ; preds = %38, %30
  %43 = phi i32 [ %39, %38 ], [ -1, %30 ]
  %44 = phi i32 [ %41, %38 ], [ -1, %30 ]
  %45 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %14, i32 0, i32 2
  %46 = load i32, ptr %45, align 4
  %47 = add i32 %46, -1
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.34, i32 noundef %43, i32 noundef %44, i32 noundef %47) #11
  br label %48

48:                                               ; preds = %42, %26
  %49 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 9
  tail call void @drm_mode_debug_printmodeline(ptr noundef %49) #11
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #11
  %50 = getelementptr inbounds i8, ptr %3, i32 8
  store i32 0, ptr %50, align 4
  %51 = load ptr, ptr %17, align 4
  %52 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %51, i32 0, i32 9, i32 9
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %83, label %55

55:                                               ; preds = %48
  %56 = load i32, ptr %12, align 4
  store i32 %56, ptr %3, align 4
  %57 = getelementptr inbounds %struct.dpu_hw_intf_cfg, ptr %3, i32 0, i32 3
  store i32 1, ptr %57, align 4
  %58 = getelementptr inbounds %struct.dpu_encoder_phys_cmd, ptr %0, i32 0, i32 1
  %59 = load i32, ptr %58, align 4
  %60 = getelementptr inbounds %struct.dpu_hw_intf_cfg, ptr %3, i32 0, i32 4
  store i32 %59, ptr %60, align 4
  %61 = icmp eq ptr %0, null
  br i1 %61, label %80, label %62

62:                                               ; preds = %55
  %63 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 14
  %64 = load i32, ptr %63, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %80, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 10
  %68 = load i32, ptr %67, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %66
  %71 = load ptr, ptr %0, align 4
  %72 = getelementptr inbounds %struct.drm_encoder, ptr %71, i32 0, i32 8
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr inbounds %struct.drm_crtc, ptr %73, i32 0, i32 22
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.dpu_crtc_state, ptr %75, i32 0, i32 6
  %77 = load i32, ptr %76, align 8
  %78 = icmp eq i32 %77, 2
  br i1 %78, label %80, label %79

79:                                               ; preds = %70, %66
  br label %80

80:                                               ; preds = %79, %70, %62, %55
  %81 = phi i32 [ 0, %79 ], [ 0, %62 ], [ 0, %55 ], [ 2, %70 ]
  %82 = getelementptr inbounds %struct.dpu_hw_intf_cfg, ptr %3, i32 0, i32 1
  store i32 %81, ptr %82, align 4
  call void %53(ptr noundef %51, ptr noundef nonnull %3) #11
  br label %83

83:                                               ; preds = %80, %48
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #11
  %84 = getelementptr inbounds i8, ptr %2, i32 28
  store i32 1, ptr %84, align 4
  %85 = load ptr, ptr %4, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.dpu_encoder_phys_cmd_tearcheck_config, i32 noundef 334) #13
  br label %280

89:                                               ; preds = %83
  %90 = load i32, ptr @__drm_debug, align 4
  %91 = and i32 %90, 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %112, label %93

93:                                               ; preds = %89
  %94 = icmp eq ptr %0, null
  br i1 %94, label %105, label %95

95:                                               ; preds = %93
  %96 = load ptr, ptr %0, align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %101, label %98

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.drm_encoder, ptr %96, i32 0, i32 2
  %100 = load i32, ptr %99, align 4
  br label %101

101:                                              ; preds = %98, %95
  %102 = phi i32 [ -1, %95 ], [ %100, %98 ]
  %103 = load i32, ptr %12, align 4
  %104 = add i32 %103, -1
  br label %105

105:                                              ; preds = %101, %93
  %106 = phi i32 [ %102, %101 ], [ -1, %93 ]
  %107 = phi i32 [ %104, %101 ], [ -1, %93 ]
  %108 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %85, i32 0, i32 2
  %109 = load i32, ptr %108, align 4
  %110 = add i32 %109, -1
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.17, i32 noundef %106, i32 noundef %107, i32 noundef %110) #11
  %111 = load ptr, ptr %4, align 4
  br label %112

112:                                              ; preds = %105, %89
  %113 = phi ptr [ %85, %89 ], [ %111, %105 ]
  %114 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %113, i32 0, i32 5
  %115 = load ptr, ptr %114, align 4
  %116 = icmp eq ptr %115, null
  br i1 %116, label %121, label %117

117:                                              ; preds = %112
  %118 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %113, i32 0, i32 5, i32 1
  %119 = load ptr, ptr %118, align 4
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %140

121:                                              ; preds = %117, %112
  %122 = load i32, ptr @__drm_debug, align 4
  %123 = and i32 %122, 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %280, label %125

125:                                              ; preds = %121
  %126 = icmp eq ptr %0, null
  br i1 %126, label %137, label %127

127:                                              ; preds = %125
  %128 = load ptr, ptr %0, align 4
  %129 = icmp eq ptr %128, null
  br i1 %129, label %133, label %130

130:                                              ; preds = %127
  %131 = getelementptr inbounds %struct.drm_encoder, ptr %128, i32 0, i32 2
  %132 = load i32, ptr %131, align 4
  br label %133

133:                                              ; preds = %130, %127
  %134 = phi i32 [ -1, %127 ], [ %132, %130 ]
  %135 = load i32, ptr %12, align 4
  %136 = add i32 %135, -1
  br label %137

137:                                              ; preds = %133, %125
  %138 = phi i32 [ %134, %133 ], [ -1, %125 ]
  %139 = phi i32 [ %136, %133 ], [ -1, %125 ]
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.35, i32 noundef %138, i32 noundef %139) #11
  br label %280

140:                                              ; preds = %117
  %141 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 8
  %142 = load ptr, ptr %141, align 4
  %143 = call i64 @dpu_kms_get_clk_rate(ptr noundef %142, ptr noundef nonnull @.str.36) #11
  %144 = trunc i64 %143 to i32
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %165

146:                                              ; preds = %140
  %147 = load i32, ptr @__drm_debug, align 4
  %148 = and i32 %147, 4
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %280, label %150

150:                                              ; preds = %146
  %151 = icmp eq ptr %0, null
  br i1 %151, label %162, label %152

152:                                              ; preds = %150
  %153 = load ptr, ptr %0, align 4
  %154 = icmp eq ptr %153, null
  br i1 %154, label %158, label %155

155:                                              ; preds = %152
  %156 = getelementptr inbounds %struct.drm_encoder, ptr %153, i32 0, i32 2
  %157 = load i32, ptr %156, align 4
  br label %158

158:                                              ; preds = %155, %152
  %159 = phi i32 [ -1, %152 ], [ %157, %155 ]
  %160 = load i32, ptr %12, align 4
  %161 = add i32 %160, -1
  br label %162

162:                                              ; preds = %158, %150
  %163 = phi i32 [ %159, %158 ], [ -1, %150 ]
  %164 = phi i32 [ %161, %158 ], [ -1, %150 ]
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.37, i32 noundef %163, i32 noundef %164, i32 noundef 0) #11
  br label %280

165:                                              ; preds = %140
  %166 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 9, i32 9
  %167 = load i16, ptr %166, align 4
  %168 = zext i16 %167 to i32
  %169 = call i32 @drm_mode_vrefresh(ptr noundef %49) #11
  %170 = mul i32 %169, %168
  %171 = udiv i32 %144, %170
  store i32 %171, ptr %2, align 4
  %172 = load i16, ptr %166, align 4
  %173 = zext i16 %172 to i32
  %174 = shl nuw nsw i32 %173, 1
  %175 = getelementptr inbounds %struct.dpu_hw_tear_check, ptr %2, i32 0, i32 1
  store i32 %174, ptr %175, align 4
  %176 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 9, i32 6
  %177 = load i16, ptr %176, align 2
  %178 = zext i16 %177 to i32
  %179 = getelementptr inbounds %struct.dpu_hw_tear_check, ptr %2, i32 0, i32 2
  store i32 %178, ptr %179, align 4
  %180 = getelementptr inbounds %struct.dpu_hw_tear_check, ptr %2, i32 0, i32 3
  store i32 4, ptr %180, align 4
  %181 = getelementptr inbounds %struct.dpu_hw_tear_check, ptr %2, i32 0, i32 4
  store i32 4, ptr %181, align 4
  %182 = getelementptr inbounds %struct.dpu_hw_tear_check, ptr %2, i32 0, i32 5
  store i32 %178, ptr %182, align 4
  %183 = add nuw nsw i32 %178, 1
  %184 = getelementptr inbounds %struct.dpu_hw_tear_check, ptr %2, i32 0, i32 6
  store i32 %183, ptr %184, align 4
  %185 = load i32, ptr @__drm_debug, align 4
  %186 = and i32 %185, 4
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %271, label %188

188:                                              ; preds = %165
  %189 = icmp eq ptr %0, null
  br i1 %189, label %200, label %190

190:                                              ; preds = %188
  %191 = load ptr, ptr %0, align 4
  %192 = icmp eq ptr %191, null
  br i1 %192, label %196, label %193

193:                                              ; preds = %190
  %194 = getelementptr inbounds %struct.drm_encoder, ptr %191, i32 0, i32 2
  %195 = load i32, ptr %194, align 4
  br label %196

196:                                              ; preds = %193, %190
  %197 = phi i32 [ -1, %190 ], [ %195, %193 ]
  %198 = load i32, ptr %12, align 4
  %199 = add i32 %198, -1
  br label %200

200:                                              ; preds = %196, %188
  %201 = phi i32 [ %197, %196 ], [ -1, %188 ]
  %202 = phi i32 [ %199, %196 ], [ -1, %188 ]
  %203 = load ptr, ptr %4, align 4
  %204 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %203, i32 0, i32 2
  %205 = load i32, ptr %204, align 4
  %206 = add i32 %205, -1
  %207 = call i32 @drm_mode_vrefresh(ptr noundef %49) #11
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.38, i32 noundef %201, i32 noundef %202, i32 noundef %206, i32 noundef %144, i32 noundef %173, i32 noundef %207) #11
  %208 = load i32, ptr @__drm_debug, align 4
  %209 = and i32 %208, 4
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %271, label %211

211:                                              ; preds = %200
  br i1 %189, label %222, label %212

212:                                              ; preds = %211
  %213 = load ptr, ptr %0, align 4
  %214 = icmp eq ptr %213, null
  br i1 %214, label %218, label %215

215:                                              ; preds = %212
  %216 = getelementptr inbounds %struct.drm_encoder, ptr %213, i32 0, i32 2
  %217 = load i32, ptr %216, align 4
  br label %218

218:                                              ; preds = %215, %212
  %219 = phi i32 [ -1, %212 ], [ %217, %215 ]
  %220 = load i32, ptr %12, align 4
  %221 = add i32 %220, -1
  br label %222

222:                                              ; preds = %218, %211
  %223 = phi i32 [ %219, %218 ], [ -1, %211 ]
  %224 = phi i32 [ %221, %218 ], [ -1, %211 ]
  %225 = load ptr, ptr %4, align 4
  %226 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %225, i32 0, i32 2
  %227 = load i32, ptr %226, align 4
  %228 = add i32 %227, -1
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.39, i32 noundef %223, i32 noundef %224, i32 noundef %228, i32 noundef 1, i32 noundef %178, i32 noundef %183) #11
  %229 = load i32, ptr @__drm_debug, align 4
  %230 = and i32 %229, 4
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %271, label %232

232:                                              ; preds = %222
  br i1 %189, label %243, label %233

233:                                              ; preds = %232
  %234 = load ptr, ptr %0, align 4
  %235 = icmp eq ptr %234, null
  br i1 %235, label %239, label %236

236:                                              ; preds = %233
  %237 = getelementptr inbounds %struct.drm_encoder, ptr %234, i32 0, i32 2
  %238 = load i32, ptr %237, align 4
  br label %239

239:                                              ; preds = %236, %233
  %240 = phi i32 [ -1, %233 ], [ %238, %236 ]
  %241 = load i32, ptr %12, align 4
  %242 = add i32 %241, -1
  br label %243

243:                                              ; preds = %239, %232
  %244 = phi i32 [ %240, %239 ], [ -1, %232 ]
  %245 = phi i32 [ %242, %239 ], [ -1, %232 ]
  %246 = load ptr, ptr %4, align 4
  %247 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %246, i32 0, i32 2
  %248 = load i32, ptr %247, align 4
  %249 = add i32 %248, -1
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.40, i32 noundef %244, i32 noundef %245, i32 noundef %249, i32 noundef 1, i32 noundef %171, i32 noundef %178) #11
  %250 = load i32, ptr @__drm_debug, align 4
  %251 = and i32 %250, 4
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %271, label %253

253:                                              ; preds = %243
  br i1 %189, label %264, label %254

254:                                              ; preds = %253
  %255 = load ptr, ptr %0, align 4
  %256 = icmp eq ptr %255, null
  br i1 %256, label %260, label %257

257:                                              ; preds = %254
  %258 = getelementptr inbounds %struct.drm_encoder, ptr %255, i32 0, i32 2
  %259 = load i32, ptr %258, align 4
  br label %260

260:                                              ; preds = %257, %254
  %261 = phi i32 [ -1, %254 ], [ %259, %257 ]
  %262 = load i32, ptr %12, align 4
  %263 = add i32 %262, -1
  br label %264

264:                                              ; preds = %260, %253
  %265 = phi i32 [ %261, %260 ], [ -1, %253 ]
  %266 = phi i32 [ %263, %260 ], [ -1, %253 ]
  %267 = load ptr, ptr %4, align 4
  %268 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %267, i32 0, i32 2
  %269 = load i32, ptr %268, align 4
  %270 = add i32 %269, -1
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.41, i32 noundef %265, i32 noundef %266, i32 noundef %270, i32 noundef %174, i32 noundef 4, i32 noundef 4) #11
  br label %271

271:                                              ; preds = %264, %243, %222, %200, %165
  %272 = load ptr, ptr %4, align 4
  %273 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %272, i32 0, i32 5
  %274 = load ptr, ptr %273, align 4
  %275 = call i32 %274(ptr noundef %272, ptr noundef nonnull %2) #11
  %276 = load ptr, ptr %4, align 4
  %277 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %276, i32 0, i32 5, i32 1
  %278 = load ptr, ptr %277, align 4
  %279 = call i32 %278(ptr noundef %276, i1 noundef zeroext true) #11
  br label %280

280:                                              ; preds = %271, %162, %146, %137, %121, %87
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #11
  br label %281

281:                                              ; preds = %280, %22
  %282 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 10
  %283 = load i32, ptr %282, align 4
  %284 = icmp eq i32 %283, 2
  br i1 %284, label %291, label %285

285:                                              ; preds = %281
  %286 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 5
  %287 = load ptr, ptr %286, align 4
  %288 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %287, i32 0, i32 9, i32 5
  %289 = load ptr, ptr %288, align 4
  %290 = load i32, ptr %12, align 4
  call void %289(ptr noundef %287, i32 noundef %290) #11
  br label %291

291:                                              ; preds = %285, %281, %7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_encoder_phys_cmd_prepare_idle_pc(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %39, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %3, i32 0, i32 5, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %39, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %0, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.drm_encoder, ptr %10, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  br label %15

15:                                               ; preds = %12, %9
  %16 = phi i32 [ %14, %12 ], [ -1, %9 ]
  %17 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_phys_cmd_connect_te, i32 0, i32 1), align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %15
  %20 = tail call ptr @llvm.thread.pointer() #11
  %21 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %22 = load i32, ptr %21, align 8
  %23 = lshr i32 %22, 5
  %24 = getelementptr i32, ptr @__cpu_online_mask, i32 %23
  %25 = load volatile i32, ptr %24, align 4
  %26 = and i32 %22, 31
  %27 = shl nuw i32 1, %26
  %28 = and i32 %27, %25
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %19
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !16
  %31 = tail call i32 @__traceiter_dpu_enc_phys_cmd_connect_te(ptr noundef null, i32 noundef %16, i1 noundef zeroext false) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !17
  %32 = load ptr, ptr %2, align 4
  %33 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %32, i32 0, i32 5, i32 2
  %34 = load ptr, ptr %33, align 4
  br label %35

35:                                               ; preds = %30, %19, %15
  %36 = phi ptr [ %7, %15 ], [ %7, %19 ], [ %34, %30 ]
  %37 = phi ptr [ %3, %15 ], [ %3, %19 ], [ %32, %30 ]
  %38 = tail call i32 %36(ptr noundef %37, i1 noundef zeroext false) #11
  br label %39

39:                                               ; preds = %35, %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_encoder_phys_cmd_handle_post_kickoff(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %39, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %3, i32 0, i32 5, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %39, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %0, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.drm_encoder, ptr %10, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  br label %15

15:                                               ; preds = %12, %9
  %16 = phi i32 [ %14, %12 ], [ -1, %9 ]
  %17 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_phys_cmd_connect_te, i32 0, i32 1), align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %15
  %20 = tail call ptr @llvm.thread.pointer() #11
  %21 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %22 = load i32, ptr %21, align 8
  %23 = lshr i32 %22, 5
  %24 = getelementptr i32, ptr @__cpu_online_mask, i32 %23
  %25 = load volatile i32, ptr %24, align 4
  %26 = and i32 %22, 31
  %27 = shl nuw i32 1, %26
  %28 = and i32 %27, %25
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %19
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !16
  %31 = tail call i32 @__traceiter_dpu_enc_phys_cmd_connect_te(ptr noundef null, i32 noundef %16, i1 noundef zeroext true) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !17
  %32 = load ptr, ptr %2, align 4
  %33 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %32, i32 0, i32 5, i32 2
  %34 = load ptr, ptr %33, align 4
  br label %35

35:                                               ; preds = %30, %19, %15
  %36 = phi ptr [ %7, %15 ], [ %7, %19 ], [ %34, %30 ]
  %37 = phi ptr [ %3, %15 ], [ %3, %19 ], [ %32, %30 ]
  %38 = tail call i32 %36(ptr noundef %37, i1 noundef zeroext true) #11
  br label %39

39:                                               ; preds = %35, %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dpu_encoder_phys_cmd_get_line_count(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 10
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 2
  br i1 %8, label %15, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %3, i32 0, i32 5, i32 7
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = tail call i32 %11(ptr noundef nonnull %3) #11
  br label %15

15:                                               ; preds = %13, %9, %5, %1
  %16 = phi i32 [ %14, %13 ], [ -22, %1 ], [ -22, %5 ], [ -22, %9 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_enc_phys_cmd_connect_te(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #8

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #9

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_debug_printmodeline(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpu_encoder_helper_register_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpu_encoder_helper_unregister_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpu_encoder_helper_wait_for_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @_dpu_encoder_phys_cmd_wait_for_idle(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.dpu_encoder_wait_info, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #11
  %3 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 20
  store ptr %3, ptr %2, align 8
  %4 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 19
  %5 = getelementptr inbounds %struct.dpu_encoder_wait_info, ptr %2, i32 0, i32 1
  store ptr %4, ptr %5, align 4
  %6 = getelementptr inbounds %struct.dpu_encoder_wait_info, ptr %2, i32 0, i32 2
  store i64 84, ptr %6, align 8
  %7 = call i32 @dpu_encoder_helper_wait_for_irq(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %2) #11
  switch i32 %7, label %81 [
    i32 -110, label %8
    i32 0, label %79
  ]

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %81, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr %0, align 4
  %14 = getelementptr inbounds %struct.dpu_encoder_phys_cmd, ptr %0, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, 1
  store i32 %16, ptr %14, align 4
  %17 = icmp eq i32 %16, 10
  %18 = icmp eq i32 %15, 0
  %19 = select i1 %17, i32 6, i32 2
  %20 = or i1 %18, %17
  %21 = icmp eq ptr %13, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %12
  %23 = getelementptr inbounds %struct.drm_encoder, ptr %13, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  br label %25

25:                                               ; preds = %22, %12
  %26 = phi i32 [ %24, %22 ], [ -1, %12 ]
  %27 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %10, i32 0, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, -1
  %30 = load volatile i32, ptr %4, align 4
  %31 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_phys_cmd_pdone_timeout, i32 0, i32 1), align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %25
  %34 = tail call ptr @llvm.thread.pointer() #11
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
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !26
  %45 = call i32 @__traceiter_dpu_enc_phys_cmd_pdone_timeout(ptr noundef null, i32 noundef %26, i32 noundef %29, i32 noundef %16, i32 noundef %30, i32 noundef %19) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !27
  br label %46

46:                                               ; preds = %44, %33, %25
  br i1 %20, label %47, label %66

47:                                               ; preds = %46
  br i1 %21, label %51, label %48

48:                                               ; preds = %47
  %49 = getelementptr inbounds %struct.drm_encoder, ptr %13, i32 0, i32 2
  %50 = load i32, ptr %49, align 4
  br label %51

51:                                               ; preds = %48, %47
  %52 = phi i32 [ %50, %48 ], [ -1, %47 ]
  %53 = load ptr, ptr %9, align 4
  %54 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %53, i32 0, i32 2
  %55 = load i32, ptr %54, align 4
  %56 = add i32 %55, -1
  %57 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 5
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %58, i32 0, i32 2
  %60 = load i32, ptr %59, align 4
  %61 = add i32 %60, -1
  %62 = load i32, ptr %14, align 4
  %63 = load volatile i32, ptr %4, align 4
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.30, i32 noundef %52, i32 noundef %56, i32 noundef %61, i32 noundef %62, i32 noundef %63) #11
  %64 = load ptr, ptr %13, align 4
  call void @msm_disp_snapshot_state(ptr noundef %64) #11
  %65 = call i32 @dpu_encoder_helper_unregister_irq(ptr noundef %0, i32 noundef 4) #11
  br label %66

66:                                               ; preds = %51, %46
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !10
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #11, !srcloc !11
  %67 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 0, i32 -1, ptr elementtype(i32) %4) #11, !srcloc !12
  %68 = extractvalue { i32, i32, i32 } %67, 0
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %66
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !13
  br label %71

71:                                               ; preds = %70, %66
  %72 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 14
  store i32 4, ptr %72, align 4
  %73 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 3
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.dpu_encoder_virt_ops, ptr %74, i32 0, i32 2
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %71
  call void %76(ptr noundef %13, ptr noundef %0, i32 noundef %19) #11
  br label %81

79:                                               ; preds = %1
  %80 = getelementptr inbounds %struct.dpu_encoder_phys_cmd, ptr %0, i32 0, i32 3
  store i32 0, ptr %80, align 4
  br label %81

81:                                               ; preds = %79, %78, %71, %8, %1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #11
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_disp_snapshot_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_enc_phys_cmd_pdone_timeout(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpu_encoder_helper_trigger_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_enc_phys_cmd_irq_ctrl(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpu_encoder_helper_split_config(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @dpu_kms_get_clk_rate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_vrefresh(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_tracing_mark_write(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_enc_phys_cmd_pp_tx_done(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { argmemonly nofree nounwind willreturn writeonly }
attributes #10 = { argmemonly nofree nounwind willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }

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
!8 = !{i64 2155926788}
!9 = !{i64 2155926980}
!10 = !{i64 2147912876}
!11 = !{i64 411186, i64 2147901157, i64 2147901183, i64 2147901230, i64 2147901252, i64 2147901280, i64 2147901300}
!12 = !{i64 397755, i64 397780, i64 397802, i64 397818, i64 397830, i64 397850, i64 397874, i64 397890, i64 397902}
!13 = !{i64 2147913002}
!14 = !{i64 2156485779}
!15 = !{i64 2156486001}
!16 = !{i64 2156285850}
!17 = !{i64 2156286044}
!18 = !{!"auto-init"}
!19 = !{i64 2147914053, i64 2147914085, i64 2147914114, i64 2147914148, i64 2147914179, i64 2147914202}
!20 = !{i64 2148011394}
!21 = !{i64 2147916410, i64 2147916442, i64 2147916471, i64 2147916505, i64 2147916536, i64 2147916559}
!22 = !{i64 2148014227}
!23 = !{i64 2147913369, i64 2147913395, i64 2147913424, i64 2147913458, i64 2147913489, i64 2147913512}
!24 = !{i64 2156471338}
!25 = !{i64 2156471552}
!26 = !{i64 2156500923}
!27 = !{i64 2156501189}
