; ModuleID = '/llk/IR/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_vid.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_vid.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type {}
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
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
%struct.dpu_enc_phys_init_params = type { ptr, ptr, ptr, i32, i32, ptr }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dpu_hw_intf = type { %struct.dpu_hw_blk, %struct.dpu_hw_blk_reg_map, i32, ptr, ptr, %struct.dpu_hw_intf_ops }
%struct.dpu_hw_blk = type {}
%struct.dpu_hw_blk_reg_map = type { ptr, i32, i32, i32, i32, i32 }
%struct.dpu_hw_intf_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.dpu_hw_ctl = type { %struct.dpu_hw_blk, %struct.dpu_hw_blk_reg_map, i32, ptr, i32, ptr, i32, i32, i32, %struct.dpu_hw_ctl_ops }
%struct.dpu_hw_ctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dpu_encoder_virt_ops = type { ptr, ptr, ptr }
%struct.dpu_intf_cfg = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.intf_prog_fetch = type { i8, i32 }
%struct.intf_timing_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dpu_hw_intf_cfg = type { i32, i32, i32, i32, i32 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.dpu_crtc_state = type { %struct.drm_crtc_state, i8, i8, [2 x %struct.drm_rect], i64, %struct.dpu_core_perf_params, i32, [2 x %struct.dpu_crtc_mixer], i32, [2 x ptr], i32, i32 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.dpu_core_perf_params = type { i64, i64, i64 }
%struct.dpu_crtc_mixer = type { ptr, ptr, ptr, i32, i32 }
%struct.dpu_hw_pingpong = type { %struct.dpu_hw_blk, %struct.dpu_hw_blk_reg_map, i32, ptr, ptr, %struct.dpu_hw_pingpong_ops }
%struct.dpu_hw_pingpong_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dpu_hw_merge_3d = type { %struct.dpu_hw_blk, %struct.dpu_hw_blk_reg_map, i32, ptr, %struct.dpu_hw_merge_3d_ops }
%struct.dpu_hw_merge_3d_ops = type { ptr }
%struct.dpu_encoder_wait_info = type { ptr, ptr, i64 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.intf_status = type { i8, i8, i32, i32 }

@.str = private unnamed_addr constant [76 x i8] c"\013[drm:%s:%d] [dpu error]failed to create encoder due to invalid parameter\0A\00", align 1
@__func__.dpu_encoder_phys_vid_init = private unnamed_addr constant [26 x i8] c"dpu_encoder_phys_vid_init\00", align 1
@.str.1 = private unnamed_addr constant [82 x i8] c"\013[drm:%s:%d] [dpu error]failed to create encoder due to memory allocation error\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"enc%d intf%d \0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"vsync_irq\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"underrun\00", align 1
@dpu_encoder_phys_vid_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"&phys_enc->pending_kickoff_wq\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"enc%d intf%d created intf idx:%d\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@__drm_debug = external dso_local local_unnamed_addr global i32, align 4
@.str.7 = private unnamed_addr constant [28 x i8] c"enc%d intf%d caching mode:\0A\00", align 1
@.str.8 = private unnamed_addr constant [53 x i8] c"drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_vid.c\00", align 1
@.str.9 = private unnamed_addr constant [50 x i8] c"enc%d intf%d update pending flush ctl %d intf %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"\013[drm:%s:%d] [dpu error]invalid encoder %d\0A\00", align 1
@__func__.dpu_encoder_phys_vid_setup_timing_engine = private unnamed_addr constant [41 x i8] c"dpu_encoder_phys_vid_setup_timing_engine\00", align 1
@.str.11 = private unnamed_addr constant [63 x i8] c"\013[drm:%s:%d] [dpu error]timing engine setup is not supported\0A\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"enc%d intf%d enabling mode:\0A\00", align 1
@.str.13 = private unnamed_addr constant [58 x i8] c"enc%d intf%d split_role %d, halve horizontal %d %d %d %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"enc%d intf%d fmt_fourcc 0x%X\0A\00", align 1
@.str.15 = private unnamed_addr constant [81 x i8] c"\013[drm:%s:%d] [dpu error]invalid params - hstart:%d,hend:%d,htot:%d,hdisplay:%d\0A\00", align 1
@__func__.drm_mode_to_intf_timing_params = private unnamed_addr constant [31 x i8] c"drm_mode_to_intf_timing_params\00", align 1
@.str.16 = private unnamed_addr constant [64 x i8] c"\013[drm:%s:%d] [dpu error]vstart:%d,vend:%d,vtot:%d,vdisplay:%d\0A\00", align 1
@programmable_fetch_config.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.17 = private unnamed_addr constant [66 x i8] c"enc%d intf%d vfp_fetch_lines %u vfp_fetch_start_vsync_counter %u\0A\00", align 1
@.str.18 = private unnamed_addr constant [54 x i8] c"enc%d intf%d prog fetch is not needed, large vbp+vsw\0A\00", align 1
@programmable_fetch_get_num_lines.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.19 = private unnamed_addr constant [65 x i8] c"\014[drm:%s:%d] low vbp+vfp may lead to perf issues in some cases\0A\00", align 1
@__func__.programmable_fetch_get_num_lines = private unnamed_addr constant [33 x i8] c"programmable_fetch_get_num_lines\00", align 1
@.str.20 = private unnamed_addr constant [56 x i8] c"enc%d intf%d less vfp than fetch req, using entire vfp\0A\00", align 1
@.str.21 = private unnamed_addr constant [46 x i8] c"enc%d intf%d room in vfp for needed prefetch\0A\00", align 1
@.str.22 = private unnamed_addr constant [68 x i8] c"enc%d intf%d v_front_porch %u v_back_porch %u vsync_pulse_width %u\0A\00", align 1
@.str.23 = private unnamed_addr constant [66 x i8] c"enc%d intf%d wc_lines %u needed_vfp_lines %u actual_vfp_lines %u\0A\00", align 1
@.str.24 = private unnamed_addr constant [49 x i8] c"\013[drm:%s:%d] [dpu error]invalid encoder/device\0A\00", align 1
@__func__.dpu_encoder_phys_vid_disable = private unnamed_addr constant [29 x i8] c"dpu_encoder_phys_vid_disable\00", align 1
@.str.25 = private unnamed_addr constant [55 x i8] c"\013[drm:%s:%d] [dpu error]invalid hw_intf %d hw_ctl %d\0A\00", align 1
@.str.26 = private unnamed_addr constant [43 x i8] c"\013[drm:%s:%d] [dpu error]already disabled\0A\00", align 1
@.str.27 = private unnamed_addr constant [43 x i8] c"wait disable failed: id:%u intf:%d ret:%d\0A\00", align 1
@.str.28 = private unnamed_addr constant [20 x i8] c"id:%u enable=%d/%d\0A\00", align 1
@.str.29 = private unnamed_addr constant [50 x i8] c"failed: id:%u intf:%d ret:%d enable:%d refcnt:%d\0A\00", align 1
@.str.30 = private unnamed_addr constant [41 x i8] c"\013[drm:%s:%d] [dpu error]vblank timeout\0A\00", align 1
@__func__.dpu_encoder_phys_vid_wait_for_commit_done = private unnamed_addr constant [42 x i8] c"dpu_encoder_phys_vid_wait_for_commit_done\00", align 1
@__tracepoint_dpu_enc_phys_vid_irq_ctrl = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@.str.32 = private unnamed_addr constant [64 x i8] c"\013[drm:%s:%d] [dpu error]enc%d intf%d ctl %d reset failure: %d\0A\00", align 1
@__func__.dpu_encoder_phys_vid_prepare_for_kickoff = private unnamed_addr constant [41 x i8] c"dpu_encoder_phys_vid_prepare_for_kickoff\00", align 1
@__tracepoint_dpu_enc_phys_vid_post_kickoff = external dso_local global %struct.tracepoint, align 4
@.str.33 = private unnamed_addr constant [11 x i8] c"vblank_irq\00", align 1
@__tracepoint_tracing_mark_write = external dso_local global %struct.tracepoint, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dpu_encoder_phys_vid_init(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dpu_encoder_phys_vid_init, i32 noundef 704) #10
  br label %123

5:                                                ; preds = %1
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 428) #11
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.dpu_encoder_phys_vid_init, i32 noundef 710) #10
  br label %123

11:                                               ; preds = %5
  %12 = load ptr, ptr %0, align 4
  %13 = getelementptr inbounds %struct.dpu_kms, ptr %12, i32 0, i32 17
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %7, i32 0, i32 4
  store ptr %14, ptr %15, align 8
  %16 = getelementptr inbounds %struct.dpu_enc_phys_init_params, ptr %0, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %7, i32 0, i32 12
  store i32 %17, ptr %18, align 4
  %19 = load i32, ptr @__drm_debug, align 4
  %20 = and i32 %19, 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %40, label %22

22:                                               ; preds = %11
  %23 = load ptr, ptr %7, align 8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.drm_encoder, ptr %23, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  br label %28

28:                                               ; preds = %25, %22
  %29 = phi i32 [ %27, %25 ], [ -1, %22 ]
  %30 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %7, i32 0, i32 7
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.dpu_hw_intf, ptr %31, i32 0, i32 2
  %35 = load i32, ptr %34, align 4
  %36 = add i32 %35, -1
  br label %37

37:                                               ; preds = %33, %28
  %38 = phi i32 [ %36, %33 ], [ -1, %28 ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef %29, i32 noundef %38) #12
  %39 = load ptr, ptr %0, align 4
  br label %40

40:                                               ; preds = %37, %11
  %41 = phi ptr [ %12, %11 ], [ %39, %37 ]
  %42 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %7, i32 0, i32 2, i32 2
  store ptr @dpu_encoder_phys_vid_is_master, ptr %42, align 8
  %43 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %7, i32 0, i32 2, i32 4
  store ptr @dpu_encoder_phys_vid_mode_set, ptr %43, align 8
  %44 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %7, i32 0, i32 2, i32 3
  store ptr @dpu_encoder_phys_vid_mode_fixup, ptr %44, align 4
  %45 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %7, i32 0, i32 2, i32 5
  store ptr @dpu_encoder_phys_vid_enable, ptr %45, align 4
  %46 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %7, i32 0, i32 2, i32 6
  store ptr @dpu_encoder_phys_vid_disable, ptr %46, align 8
  %47 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %7, i32 0, i32 2, i32 8
  store ptr @dpu_encoder_phys_vid_destroy, ptr %47, align 8
  %48 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %7, i32 0, i32 2, i32 9
  store ptr @dpu_encoder_phys_vid_get_hw_resources, ptr %48, align 4
  %49 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %7, i32 0, i32 2, i32 10
  store ptr @dpu_encoder_phys_vid_control_vblank_irq, ptr %49, align 8
  %50 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %7, i32 0, i32 2, i32 11
  store ptr @dpu_encoder_phys_vid_wait_for_commit_done, ptr %50, align 4
  %51 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %7, i32 0, i32 2, i32 13
  store ptr @dpu_encoder_phys_vid_wait_for_vblank, ptr %51, align 4
  %52 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %7, i32 0, i32 2, i32 12
  store ptr @dpu_encoder_phys_vid_wait_for_vblank, ptr %52, align 8
  %53 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %7, i32 0, i32 2, i32 18
  store ptr @dpu_encoder_phys_vid_irq_control, ptr %53, align 8
  %54 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %7, i32 0, i32 2, i32 14
  store ptr @dpu_encoder_phys_vid_prepare_for_kickoff, ptr %54, align 8
  %55 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %7, i32 0, i32 2, i32 15
  store ptr @dpu_encoder_phys_vid_handle_post_kickoff, ptr %55, align 4
  %56 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %7, i32 0, i32 2, i32 17
  store ptr @dpu_encoder_phys_vid_needs_single_flush, ptr %56, align 4
  %57 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %7, i32 0, i32 2, i32 21
  store ptr @dpu_encoder_phys_vid_get_line_count, ptr %57, align 4
  %58 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %7, i32 0, i32 2, i32 22
  store ptr @dpu_encoder_phys_vid_get_frame_count, ptr %58, align 8
  %59 = getelementptr inbounds %struct.dpu_enc_phys_init_params, ptr %0, i32 0, i32 1
  %60 = load ptr, ptr %59, align 4
  store ptr %60, ptr %7, align 8
  %61 = getelementptr inbounds %struct.dpu_enc_phys_init_params, ptr %0, i32 0, i32 2
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %7, i32 0, i32 3
  store ptr %62, ptr %63, align 4
  %64 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %7, i32 0, i32 8
  store ptr %41, ptr %64, align 8
  %65 = getelementptr inbounds %struct.dpu_enc_phys_init_params, ptr %0, i32 0, i32 3
  %66 = load i32, ptr %65, align 4
  %67 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %7, i32 0, i32 10
  store i32 %66, ptr %67, align 4
  %68 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %7, i32 0, i32 11
  store i32 2, ptr %68, align 8
  %69 = getelementptr inbounds %struct.dpu_enc_phys_init_params, ptr %0, i32 0, i32 5
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %7, i32 0, i32 13
  store ptr %70, ptr %71, align 8
  %72 = getelementptr %struct.dpu_encoder_phys, ptr %7, i32 0, i32 21, i32 0, i32 3
  store volatile ptr %72, ptr %72, align 4
  %73 = getelementptr %struct.dpu_encoder_phys, ptr %7, i32 0, i32 21, i32 0, i32 3, i32 0, i32 1
  store ptr %72, ptr %73, align 8
  %74 = getelementptr %struct.dpu_encoder_phys, ptr %7, i32 0, i32 21, i32 0, i32 2
  store i32 -22, ptr %74, align 8
  %75 = getelementptr %struct.dpu_encoder_phys, ptr %7, i32 0, i32 21, i32 0, i32 3, i32 2
  store ptr %7, ptr %75, align 8
  %76 = getelementptr %struct.dpu_encoder_phys, ptr %7, i32 0, i32 21, i32 1, i32 3
  store volatile ptr %76, ptr %76, align 8
  %77 = getelementptr %struct.dpu_encoder_phys, ptr %7, i32 0, i32 21, i32 1, i32 3, i32 0, i32 1
  store ptr %76, ptr %77, align 4
  %78 = getelementptr %struct.dpu_encoder_phys, ptr %7, i32 0, i32 21, i32 1, i32 2
  store i32 -22, ptr %78, align 4
  %79 = getelementptr %struct.dpu_encoder_phys, ptr %7, i32 0, i32 21, i32 1, i32 3, i32 2
  store ptr %7, ptr %79, align 4
  %80 = getelementptr %struct.dpu_encoder_phys, ptr %7, i32 0, i32 21, i32 2, i32 3
  store volatile ptr %80, ptr %80, align 4
  %81 = getelementptr %struct.dpu_encoder_phys, ptr %7, i32 0, i32 21, i32 2, i32 3, i32 0, i32 1
  store ptr %80, ptr %81, align 8
  %82 = getelementptr %struct.dpu_encoder_phys, ptr %7, i32 0, i32 21, i32 2, i32 2
  store i32 -22, ptr %82, align 8
  %83 = getelementptr %struct.dpu_encoder_phys, ptr %7, i32 0, i32 21, i32 2, i32 3, i32 2
  store ptr %7, ptr %83, align 8
  %84 = getelementptr %struct.dpu_encoder_phys, ptr %7, i32 0, i32 21, i32 3, i32 3
  store volatile ptr %84, ptr %84, align 8
  %85 = getelementptr %struct.dpu_encoder_phys, ptr %7, i32 0, i32 21, i32 3, i32 3, i32 0, i32 1
  store ptr %84, ptr %85, align 4
  %86 = getelementptr %struct.dpu_encoder_phys, ptr %7, i32 0, i32 21, i32 3, i32 2
  store i32 -22, ptr %86, align 4
  %87 = getelementptr %struct.dpu_encoder_phys, ptr %7, i32 0, i32 21, i32 3, i32 3, i32 2
  store ptr %7, ptr %87, align 4
  %88 = getelementptr %struct.dpu_encoder_phys, ptr %7, i32 0, i32 21, i32 4, i32 3
  store volatile ptr %88, ptr %88, align 4
  %89 = getelementptr %struct.dpu_encoder_phys, ptr %7, i32 0, i32 21, i32 4, i32 3, i32 0, i32 1
  store ptr %88, ptr %89, align 8
  %90 = getelementptr %struct.dpu_encoder_phys, ptr %7, i32 0, i32 21, i32 4, i32 2
  store i32 -22, ptr %90, align 8
  %91 = getelementptr %struct.dpu_encoder_phys, ptr %7, i32 0, i32 21, i32 4, i32 3, i32 2
  store ptr %7, ptr %91, align 8
  %92 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %7, i32 0, i32 21
  store ptr @.str.3, ptr %92, align 8
  %93 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %7, i32 0, i32 21, i32 0, i32 1
  store i32 0, ptr %93, align 4
  %94 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %7, i32 0, i32 21, i32 0, i32 3, i32 1
  store ptr @dpu_encoder_phys_vid_vblank_irq, ptr %94, align 4
  %95 = getelementptr %struct.dpu_encoder_phys, ptr %7, i32 0, i32 21, i32 2
  store ptr @.str.4, ptr %95, align 8
  %96 = getelementptr %struct.dpu_encoder_phys, ptr %7, i32 0, i32 21, i32 2, i32 1
  store i32 2, ptr %96, align 4
  %97 = getelementptr %struct.dpu_encoder_phys, ptr %7, i32 0, i32 21, i32 2, i32 3, i32 1
  store ptr @dpu_encoder_phys_vid_underrun_irq, ptr %97, align 4
  %98 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %7, i32 0, i32 15
  store volatile i32 0, ptr %98, align 8
  %99 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %7, i32 0, i32 19
  store volatile i32 0, ptr %99, align 8
  %100 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %7, i32 0, i32 20
  tail call void @__init_waitqueue_head(ptr noundef %100, ptr noundef nonnull @.str.5, ptr noundef nonnull @dpu_encoder_phys_vid_init.__key) #12
  %101 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %7, i32 0, i32 14
  store i32 1, ptr %101, align 4
  %102 = load i32, ptr @__drm_debug, align 4
  %103 = and i32 %102, 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %123, label %105

105:                                              ; preds = %40
  %106 = load ptr, ptr %7, align 8
  %107 = icmp eq ptr %106, null
  br i1 %107, label %111, label %108

108:                                              ; preds = %105
  %109 = getelementptr inbounds %struct.drm_encoder, ptr %106, i32 0, i32 2
  %110 = load i32, ptr %109, align 4
  br label %111

111:                                              ; preds = %108, %105
  %112 = phi i32 [ %110, %108 ], [ -1, %105 ]
  %113 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %7, i32 0, i32 7
  %114 = load ptr, ptr %113, align 4
  %115 = icmp eq ptr %114, null
  br i1 %115, label %120, label %116

116:                                              ; preds = %111
  %117 = getelementptr inbounds %struct.dpu_hw_intf, ptr %114, i32 0, i32 2
  %118 = load i32, ptr %117, align 4
  %119 = add i32 %118, -1
  br label %120

120:                                              ; preds = %116, %111
  %121 = phi i32 [ %119, %116 ], [ -1, %111 ]
  %122 = load i32, ptr %16, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef %112, i32 noundef %121, i32 noundef %122) #12
  br label %123

123:                                              ; preds = %120, %40, %9, %3
  %124 = phi ptr [ inttoptr (i32 -12 to ptr), %9 ], [ inttoptr (i32 -22 to ptr), %3 ], [ %7, %40 ], [ %7, %120 ]
  ret ptr %124
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_encoder_phys_vid_vblank_irq(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = tail call ptr @llvm.thread.pointer() #12
  %6 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 53
  %7 = load i32, ptr %6, align 4
  %8 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tracing_mark_write, i32 0, i32 1), align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %22

10:                                               ; preds = %2
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
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !8
  %21 = tail call i32 @__traceiter_tracing_mark_write(ptr noundef null, i32 noundef %7, ptr noundef nonnull @.str.33, i1 noundef zeroext true) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !9
  br label %22

22:                                               ; preds = %20, %10, %2
  %23 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  %28 = load ptr, ptr %0, align 4
  tail call void %25(ptr noundef %28, ptr noundef %0) #12
  br label %29

29:                                               ; preds = %27, %22
  %30 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 19
  %31 = load volatile i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 13
  %33 = load ptr, ptr %32, align 4
  %34 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %33) #12
  %35 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %4, i32 0, i32 9, i32 8
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %29
  %39 = tail call i32 %36(ptr noundef %4) #12
  br label %40

40:                                               ; preds = %38, %29
  %41 = phi i32 [ %39, %38 ], [ 0, %29 ]
  %42 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %4, i32 0, i32 9, i32 3
  %43 = load ptr, ptr %42, align 4
  %44 = tail call i32 %43(ptr noundef %4) #12
  %45 = and i32 %44, %41
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %40
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %30) #12, !srcloc !11
  %48 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %30, ptr %30, i32 0, i32 -1, ptr elementtype(i32) %30) #12, !srcloc !12
  %49 = extractvalue { i32, i32, i32 } %48, 0
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %47
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !13
  br label %52

52:                                               ; preds = %51, %47, %40
  %53 = load ptr, ptr %32, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %53, i32 noundef %34) #12
  %54 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 20
  tail call void @__wake_up(ptr noundef %54, i32 noundef 3, i32 noundef 0, ptr noundef null) #12
  %55 = load ptr, ptr %23, align 4
  %56 = getelementptr inbounds %struct.dpu_encoder_virt_ops, ptr %55, i32 0, i32 2
  %57 = load ptr, ptr %56, align 4
  %58 = load ptr, ptr %0, align 4
  tail call void %57(ptr noundef %58, ptr noundef %0, i32 noundef 1) #12
  %59 = load i32, ptr %6, align 4
  %60 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tracing_mark_write, i32 0, i32 1), align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %74

62:                                               ; preds = %52
  %63 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %64 = load i32, ptr %63, align 8
  %65 = lshr i32 %64, 5
  %66 = getelementptr i32, ptr @__cpu_online_mask, i32 %65
  %67 = load volatile i32, ptr %66, align 4
  %68 = and i32 %64, 31
  %69 = shl nuw i32 1, %68
  %70 = and i32 %69, %67
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %62
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !8
  %73 = tail call i32 @__traceiter_tracing_mark_write(ptr noundef null, i32 noundef %59, ptr noundef nonnull @.str.33, i1 noundef zeroext false) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !9
  br label %74

74:                                               ; preds = %72, %62, %52
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_encoder_phys_vid_underrun_irq(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dpu_encoder_virt_ops, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %0, align 4
  tail call void %6(ptr noundef %9, ptr noundef %0) #12
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i1 @dpu_encoder_phys_vid_is_master(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 10
  %3 = load i32, ptr %2, align 4
  %4 = icmp ne i32 %3, 2
  ret i1 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_encoder_phys_vid_mode_set(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %30, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 9
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(112) %6, ptr noundef nonnull align 4 dereferenceable(112) %2, i32 112, i1 false)
  tail call void @drm_mode_debug_printmodeline(ptr noundef nonnull %2) #12
  %7 = load i32, ptr @__drm_debug, align 4
  %8 = and i32 %7, 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %30, label %10

10:                                               ; preds = %5
  %11 = icmp eq ptr %0, null
  br i1 %11, label %27, label %12

12:                                               ; preds = %10
  %13 = load ptr, ptr %0, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.drm_encoder, ptr %13, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  br label %18

18:                                               ; preds = %15, %12
  %19 = phi i32 [ -1, %12 ], [ %17, %15 ]
  %20 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 7
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.dpu_hw_intf, ptr %21, i32 0, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, -1
  br label %27

27:                                               ; preds = %23, %18, %10
  %28 = phi i32 [ %19, %23 ], [ %19, %18 ], [ -1, %10 ]
  %29 = phi i32 [ %26, %23 ], [ -1, %18 ], [ -1, %10 ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.7, i32 noundef %28, i32 noundef %29) #12
  br label %30

30:                                               ; preds = %27, %5, %3
  %31 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 7
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.dpu_hw_intf, ptr %32, i32 0, i32 3
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.dpu_intf_cfg, ptr %34, i32 0, i32 9
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 21, i32 0, i32 2
  store i32 %36, ptr %37, align 4
  %38 = load ptr, ptr %33, align 4
  %39 = getelementptr inbounds %struct.dpu_intf_cfg, ptr %38, i32 0, i32 8
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr %struct.dpu_encoder_phys, ptr %0, i32 0, i32 21, i32 2, i32 2
  store i32 %40, ptr %41, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @dpu_encoder_phys_vid_mode_fixup(ptr noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #0 {
  %4 = load i32, ptr @__drm_debug, align 4
  %5 = and i32 %4, 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %27, label %7

7:                                                ; preds = %3
  %8 = icmp eq ptr %0, null
  br i1 %8, label %24, label %9

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
  %17 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 7
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.dpu_hw_intf, ptr %18, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, -1
  br label %24

24:                                               ; preds = %20, %15, %7
  %25 = phi i32 [ %16, %20 ], [ %16, %15 ], [ -1, %7 ]
  %26 = phi i32 [ %23, %20 ], [ -1, %15 ], [ -1, %7 ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef %25, i32 noundef %26) #12
  br label %27

27:                                               ; preds = %24, %3
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_encoder_phys_vid_enable(ptr noundef %0) #0 {
  %2 = alloca %struct.intf_prog_fetch, align 8
  %3 = alloca %struct.drm_display_mode, align 4
  %4 = alloca %struct.intf_timing_params, align 4
  %5 = alloca %struct.dpu_hw_intf_cfg, align 4
  %6 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr @__drm_debug, align 4
  %9 = and i32 %8, 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %31, label %11

11:                                               ; preds = %1
  %12 = icmp eq ptr %0, null
  br i1 %12, label %28, label %13

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
  %21 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 7
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.dpu_hw_intf, ptr %22, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, -1
  br label %28

28:                                               ; preds = %24, %19, %11
  %29 = phi i32 [ %20, %24 ], [ %20, %19 ], [ -1, %11 ]
  %30 = phi i32 [ %27, %24 ], [ -1, %19 ], [ -1, %11 ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef %29, i32 noundef %30) #12
  br label %31

31:                                               ; preds = %28, %1
  %32 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 7
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.dpu_hw_intf, ptr %33, i32 0, i32 5, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %38, !prof !14

37:                                               ; preds = %31
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 430, i32 noundef 9, ptr noundef null) #12
  br label %573

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.dpu_hw_intf, ptr %33, i32 0, i32 2
  %40 = load i32, ptr %39, align 4
  tail call void @dpu_encoder_helper_split_config(ptr noundef %0, i32 noundef %40) #12
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %3) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(112) %3, i8 0, i32 112, i1 false) #12, !annotation !15
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(60) %4, i8 0, i32 60, i1 false) #12
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %5, i8 0, i32 20, i1 false) #12
  %41 = load ptr, ptr %6, align 4
  %42 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %41, i32 0, i32 9, i32 9
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %38
  %46 = icmp ne ptr %0, null
  %47 = zext i1 %46 to i32
  %48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.dpu_encoder_phys_vid_setup_timing_engine, i32 noundef 252, i32 noundef %47) #10
  br label %514

49:                                               ; preds = %38
  %50 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(112) %3, ptr noundef align 4 dereferenceable(112) %50, i32 112, i1 false) #12
  %51 = load ptr, ptr %32, align 4
  %52 = getelementptr inbounds %struct.dpu_hw_intf, ptr %51, i32 0, i32 5
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.dpu_encoder_phys_vid_setup_timing_engine, i32 noundef 258) #10
  br label %514

57:                                               ; preds = %49
  %58 = load i32, ptr @__drm_debug, align 4
  %59 = and i32 %58, 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %79, label %61

61:                                               ; preds = %57
  %62 = icmp eq ptr %0, null
  br i1 %62, label %76, label %63

63:                                               ; preds = %61
  %64 = load ptr, ptr %0, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.drm_encoder, ptr %64, i32 0, i32 2
  %68 = load i32, ptr %67, align 4
  br label %69

69:                                               ; preds = %66, %63
  %70 = phi i32 [ -1, %63 ], [ %68, %66 ]
  %71 = icmp eq ptr %51, null
  br i1 %71, label %76, label %72

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.dpu_hw_intf, ptr %51, i32 0, i32 2
  %74 = load i32, ptr %73, align 4
  %75 = add i32 %74, -1
  br label %76

76:                                               ; preds = %72, %69, %61
  %77 = phi i32 [ %70, %72 ], [ %70, %69 ], [ -1, %61 ]
  %78 = phi i32 [ %75, %72 ], [ -1, %69 ], [ -1, %61 ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.12, i32 noundef %77, i32 noundef %78) #12
  br label %79

79:                                               ; preds = %76, %57
  call void @drm_mode_debug_printmodeline(ptr noundef nonnull %3) #12
  %80 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 10
  %81 = load i32, ptr %80, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %122, label %83

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.drm_display_mode, ptr %3, i32 0, i32 1
  %85 = load i16, ptr %84, align 4
  %86 = lshr i16 %85, 1
  store i16 %86, ptr %84, align 4
  %87 = getelementptr inbounds %struct.drm_display_mode, ptr %3, i32 0, i32 4
  %88 = load i16, ptr %87, align 2
  %89 = lshr i16 %88, 1
  store i16 %89, ptr %87, align 2
  %90 = getelementptr inbounds %struct.drm_display_mode, ptr %3, i32 0, i32 2
  %91 = load i16, ptr %90, align 2
  %92 = lshr i16 %91, 1
  store i16 %92, ptr %90, align 2
  %93 = getelementptr inbounds %struct.drm_display_mode, ptr %3, i32 0, i32 3
  %94 = load i16, ptr %93, align 4
  %95 = lshr i16 %94, 1
  store i16 %95, ptr %93, align 4
  %96 = load i32, ptr @__drm_debug, align 4
  %97 = and i32 %96, 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %122, label %99

99:                                               ; preds = %83
  %100 = icmp eq ptr %0, null
  br i1 %100, label %115, label %101

101:                                              ; preds = %99
  %102 = load ptr, ptr %0, align 4
  %103 = icmp eq ptr %102, null
  br i1 %103, label %107, label %104

104:                                              ; preds = %101
  %105 = getelementptr inbounds %struct.drm_encoder, ptr %102, i32 0, i32 2
  %106 = load i32, ptr %105, align 4
  br label %107

107:                                              ; preds = %104, %101
  %108 = phi i32 [ -1, %101 ], [ %106, %104 ]
  %109 = load ptr, ptr %32, align 4
  %110 = icmp eq ptr %109, null
  br i1 %110, label %115, label %111

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.dpu_hw_intf, ptr %109, i32 0, i32 2
  %113 = load i32, ptr %112, align 4
  %114 = add i32 %113, -1
  br label %115

115:                                              ; preds = %111, %107, %99
  %116 = phi i32 [ %108, %111 ], [ %108, %107 ], [ -1, %99 ]
  %117 = phi i32 [ %114, %111 ], [ -1, %107 ], [ -1, %99 ]
  %118 = zext i16 %86 to i32
  %119 = zext i16 %89 to i32
  %120 = zext i16 %92 to i32
  %121 = zext i16 %95 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.13, i32 noundef %116, i32 noundef %117, i32 noundef %81, i32 noundef %118, i32 noundef %119, i32 noundef %120, i32 noundef %121) #12
  br label %122

122:                                              ; preds = %115, %83, %79
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(60) %4, i8 0, i32 60, i1 false) #12
  %123 = getelementptr inbounds %struct.drm_display_mode, ptr %3, i32 0, i32 4
  %124 = load i16, ptr %123, align 2
  %125 = getelementptr inbounds %struct.drm_display_mode, ptr %3, i32 0, i32 3
  %126 = load i16, ptr %125, align 4
  %127 = icmp ult i16 %124, %126
  %128 = getelementptr inbounds %struct.drm_display_mode, ptr %3, i32 0, i32 2
  %129 = load i16, ptr %128, align 2
  %130 = getelementptr inbounds %struct.drm_display_mode, ptr %3, i32 0, i32 1
  %131 = load i16, ptr %130, align 4
  %132 = zext i16 %131 to i32
  %133 = icmp ult i16 %129, %131
  %134 = select i1 %127, i1 true, i1 %133
  br i1 %134, label %151, label %135

135:                                              ; preds = %122
  %136 = getelementptr inbounds %struct.drm_display_mode, ptr %3, i32 0, i32 9
  %137 = load i16, ptr %136, align 4
  %138 = getelementptr inbounds %struct.drm_display_mode, ptr %3, i32 0, i32 8
  %139 = load i16, ptr %138, align 2
  %140 = icmp ult i16 %137, %139
  br i1 %140, label %151, label %141

141:                                              ; preds = %135
  %142 = getelementptr inbounds %struct.drm_display_mode, ptr %3, i32 0, i32 7
  %143 = load i16, ptr %142, align 4
  %144 = getelementptr inbounds %struct.drm_display_mode, ptr %3, i32 0, i32 6
  %145 = load i16, ptr %144, align 2
  %146 = icmp ult i16 %143, %145
  %147 = icmp ult i16 %126, %129
  %148 = select i1 %146, i1 true, i1 %147
  %149 = icmp ult i16 %139, %143
  %150 = select i1 %148, i1 true, i1 %149
  br i1 %150, label %151, label %169

151:                                              ; preds = %141, %135, %122
  %152 = zext i16 %129 to i32
  %153 = zext i16 %126 to i32
  %154 = zext i16 %124 to i32
  %155 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.drm_mode_to_intf_timing_params, i32 noundef 56, i32 noundef %152, i32 noundef %153, i32 noundef %154, i32 noundef %132) #10
  %156 = getelementptr inbounds %struct.drm_display_mode, ptr %3, i32 0, i32 7
  %157 = load i16, ptr %156, align 4
  %158 = zext i16 %157 to i32
  %159 = getelementptr inbounds %struct.drm_display_mode, ptr %3, i32 0, i32 8
  %160 = load i16, ptr %159, align 2
  %161 = zext i16 %160 to i32
  %162 = getelementptr inbounds %struct.drm_display_mode, ptr %3, i32 0, i32 9
  %163 = load i16, ptr %162, align 4
  %164 = zext i16 %163 to i32
  %165 = getelementptr inbounds %struct.drm_display_mode, ptr %3, i32 0, i32 6
  %166 = load i16, ptr %165, align 2
  %167 = zext i16 %166 to i32
  %168 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.drm_mode_to_intf_timing_params, i32 noundef 59, i32 noundef %158, i32 noundef %161, i32 noundef %164, i32 noundef %167) #10
  br label %223

169:                                              ; preds = %141
  store i32 %132, ptr %4, align 4
  %170 = zext i16 %145 to i32
  %171 = getelementptr inbounds %struct.intf_timing_params, ptr %4, i32 0, i32 1
  store i32 %170, ptr %171, align 4
  %172 = getelementptr inbounds %struct.intf_timing_params, ptr %4, i32 0, i32 2
  store i32 %132, ptr %172, align 4
  %173 = getelementptr inbounds %struct.intf_timing_params, ptr %4, i32 0, i32 3
  store i32 %170, ptr %173, align 4
  %174 = zext i16 %124 to i32
  %175 = zext i16 %126 to i32
  %176 = sub nsw i32 %174, %175
  %177 = getelementptr inbounds %struct.intf_timing_params, ptr %4, i32 0, i32 4
  store i32 %176, ptr %177, align 4
  %178 = zext i16 %129 to i32
  %179 = sub nsw i32 %178, %132
  %180 = getelementptr inbounds %struct.intf_timing_params, ptr %4, i32 0, i32 5
  store i32 %179, ptr %180, align 4
  %181 = zext i16 %137 to i32
  %182 = zext i16 %139 to i32
  %183 = sub nsw i32 %181, %182
  %184 = getelementptr inbounds %struct.intf_timing_params, ptr %4, i32 0, i32 6
  store i32 %183, ptr %184, align 4
  %185 = zext i16 %143 to i32
  %186 = sub nsw i32 %185, %170
  %187 = getelementptr inbounds %struct.intf_timing_params, ptr %4, i32 0, i32 7
  store i32 %186, ptr %187, align 4
  %188 = sub nsw i32 %175, %178
  %189 = getelementptr inbounds %struct.intf_timing_params, ptr %4, i32 0, i32 8
  store i32 %188, ptr %189, align 4
  %190 = sub nsw i32 %182, %185
  %191 = getelementptr inbounds %struct.intf_timing_params, ptr %4, i32 0, i32 9
  store i32 %190, ptr %191, align 4
  %192 = getelementptr inbounds %struct.drm_display_mode, ptr %3, i32 0, i32 11
  %193 = load i32, ptr %192, align 4
  %194 = lshr i32 %193, 1
  %195 = and i32 %194, 1
  %196 = getelementptr inbounds %struct.intf_timing_params, ptr %4, i32 0, i32 10
  store i32 %195, ptr %196, align 4
  %197 = lshr i32 %193, 3
  %198 = and i32 %197, 1
  %199 = getelementptr inbounds %struct.intf_timing_params, ptr %4, i32 0, i32 11
  store i32 %198, ptr %199, align 4
  %200 = getelementptr inbounds %struct.intf_timing_params, ptr %4, i32 0, i32 12
  store i32 0, ptr %200, align 4
  %201 = getelementptr inbounds %struct.intf_timing_params, ptr %4, i32 0, i32 13
  store i32 255, ptr %201, align 4
  %202 = getelementptr inbounds %struct.drm_display_mode, ptr %3, i32 0, i32 5
  %203 = load i16, ptr %202, align 4
  %204 = zext i16 %203 to i32
  %205 = getelementptr inbounds %struct.intf_timing_params, ptr %4, i32 0, i32 14
  store i32 %204, ptr %205, align 4
  %206 = load ptr, ptr %32, align 4
  %207 = getelementptr inbounds %struct.dpu_hw_intf, ptr %206, i32 0, i32 3
  %208 = load ptr, ptr %207, align 4
  %209 = getelementptr inbounds %struct.dpu_intf_cfg, ptr %208, i32 0, i32 5
  %210 = load i32, ptr %209, align 4
  %211 = icmp eq i32 %210, 1
  br i1 %211, label %212, label %216

212:                                              ; preds = %169
  store i32 0, ptr %196, align 4
  store i32 0, ptr %199, align 4
  %213 = load ptr, ptr %207, align 4
  %214 = getelementptr inbounds %struct.dpu_intf_cfg, ptr %213, i32 0, i32 5
  %215 = load i32, ptr %214, align 4
  br label %216

216:                                              ; preds = %212, %169
  %217 = phi i32 [ %215, %212 ], [ %210, %169 ]
  %218 = add i32 %217, -9
  %219 = icmp ult i32 %218, 2
  br i1 %219, label %220, label %223

220:                                              ; preds = %216
  %221 = add nsw i32 %179, %176
  store i32 %221, ptr %177, align 4
  store i32 0, ptr %180, align 4
  %222 = add nsw i32 %186, %183
  store i32 %222, ptr %184, align 4
  store i32 0, ptr %187, align 4
  br label %223

223:                                              ; preds = %220, %216, %151
  %224 = call ptr @dpu_get_dpu_format_ext(i32 noundef 875710290, i64 noundef 0) #12
  %225 = load i32, ptr @__drm_debug, align 4
  %226 = and i32 %225, 4
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %247, label %228

228:                                              ; preds = %223
  %229 = icmp eq ptr %0, null
  br i1 %229, label %244, label %230

230:                                              ; preds = %228
  %231 = load ptr, ptr %0, align 4
  %232 = icmp eq ptr %231, null
  br i1 %232, label %236, label %233

233:                                              ; preds = %230
  %234 = getelementptr inbounds %struct.drm_encoder, ptr %231, i32 0, i32 2
  %235 = load i32, ptr %234, align 4
  br label %236

236:                                              ; preds = %233, %230
  %237 = phi i32 [ -1, %230 ], [ %235, %233 ]
  %238 = load ptr, ptr %32, align 4
  %239 = icmp eq ptr %238, null
  br i1 %239, label %244, label %240

240:                                              ; preds = %236
  %241 = getelementptr inbounds %struct.dpu_hw_intf, ptr %238, i32 0, i32 2
  %242 = load i32, ptr %241, align 4
  %243 = add i32 %242, -1
  br label %244

244:                                              ; preds = %240, %236, %228
  %245 = phi i32 [ %237, %240 ], [ %237, %236 ], [ -1, %228 ]
  %246 = phi i32 [ %243, %240 ], [ -1, %236 ], [ -1, %228 ]
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.14, i32 noundef %245, i32 noundef %246, i32 noundef 875710290) #12
  br label %247

247:                                              ; preds = %244, %223
  %248 = load ptr, ptr %32, align 4
  %249 = getelementptr inbounds %struct.dpu_hw_intf, ptr %248, i32 0, i32 2
  %250 = load i32, ptr %249, align 4
  store i32 %250, ptr %5, align 4
  %251 = getelementptr inbounds %struct.dpu_hw_intf_cfg, ptr %5, i32 0, i32 3
  store i32 0, ptr %251, align 4
  %252 = getelementptr inbounds %struct.dpu_hw_intf_cfg, ptr %5, i32 0, i32 4
  store i32 0, ptr %252, align 4
  %253 = icmp eq ptr %0, null
  br i1 %253, label %271, label %254

254:                                              ; preds = %247
  %255 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 14
  %256 = load i32, ptr %255, align 4
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %271, label %258

258:                                              ; preds = %254
  %259 = load i32, ptr %80, align 4
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %261, label %270

261:                                              ; preds = %258
  %262 = load ptr, ptr %0, align 4
  %263 = getelementptr inbounds %struct.drm_encoder, ptr %262, i32 0, i32 8
  %264 = load ptr, ptr %263, align 4
  %265 = getelementptr inbounds %struct.drm_crtc, ptr %264, i32 0, i32 22
  %266 = load ptr, ptr %265, align 4
  %267 = getelementptr inbounds %struct.dpu_crtc_state, ptr %266, i32 0, i32 6
  %268 = load i32, ptr %267, align 8
  %269 = icmp eq i32 %268, 2
  br i1 %269, label %271, label %270

270:                                              ; preds = %261, %258
  br label %271

271:                                              ; preds = %270, %261, %254, %247
  %272 = phi i32 [ 0, %270 ], [ 0, %254 ], [ 0, %247 ], [ 2, %261 ]
  %273 = getelementptr inbounds %struct.dpu_hw_intf_cfg, ptr %5, i32 0, i32 1
  store i32 %272, ptr %273, align 4
  %274 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 6
  %275 = load ptr, ptr %274, align 4
  %276 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %275, i32 0, i32 4
  %277 = load ptr, ptr %276, align 4
  %278 = icmp eq ptr %277, null
  br i1 %278, label %283, label %279

279:                                              ; preds = %271
  %280 = getelementptr inbounds %struct.dpu_hw_merge_3d, ptr %277, i32 0, i32 2
  %281 = load i32, ptr %280, align 4
  %282 = getelementptr inbounds %struct.dpu_hw_intf_cfg, ptr %5, i32 0, i32 2
  store i32 %281, ptr %282, align 4
  br label %283

283:                                              ; preds = %279, %271
  %284 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 13
  %285 = load ptr, ptr %284, align 4
  %286 = call i32 @_raw_spin_lock_irqsave(ptr noundef %285) #12
  %287 = load ptr, ptr %32, align 4
  %288 = getelementptr inbounds %struct.dpu_hw_intf, ptr %287, i32 0, i32 5
  %289 = load ptr, ptr %288, align 4
  call void %289(ptr noundef %287, ptr noundef nonnull %4, ptr noundef %224) #12
  %290 = load ptr, ptr %6, align 4
  %291 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %290, i32 0, i32 9, i32 9
  %292 = load ptr, ptr %291, align 4
  call void %292(ptr noundef %290, ptr noundef nonnull %5) #12
  %293 = load ptr, ptr %32, align 4
  %294 = getelementptr inbounds %struct.dpu_hw_intf, ptr %293, i32 0, i32 5, i32 5
  %295 = load ptr, ptr %294, align 4
  %296 = icmp eq ptr %295, null
  br i1 %296, label %301, label %297

297:                                              ; preds = %283
  %298 = load ptr, ptr %274, align 4
  %299 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %298, i32 0, i32 2
  %300 = load i32, ptr %299, align 4
  call void %295(ptr noundef %293, i1 noundef zeroext true, i32 noundef %300) #12
  br label %301

301:                                              ; preds = %297, %283
  %302 = load ptr, ptr %274, align 4
  %303 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %302, i32 0, i32 4
  %304 = load ptr, ptr %303, align 4
  %305 = icmp eq ptr %304, null
  br i1 %305, label %310, label %306

306:                                              ; preds = %301
  %307 = getelementptr inbounds %struct.dpu_hw_merge_3d, ptr %304, i32 0, i32 4
  %308 = load ptr, ptr %307, align 4
  %309 = load i32, ptr %273, align 4
  call void %308(ptr noundef nonnull %304, i32 noundef %309) #12
  br label %310

310:                                              ; preds = %306, %301
  %311 = load ptr, ptr %284, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %311, i32 noundef %286) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #12
  store i64 0, ptr %2, align 8
  %312 = load ptr, ptr %32, align 4
  %313 = getelementptr inbounds %struct.dpu_hw_intf, ptr %312, i32 0, i32 5, i32 1
  %314 = load ptr, ptr %313, align 4
  %315 = icmp eq ptr %314, null
  %316 = load i1, ptr @programmable_fetch_config.__already_done, align 1
  %317 = xor i1 %316, true
  %318 = select i1 %315, i1 %317, i1 false
  br i1 %318, label %319, label %320, !prof !14

319:                                              ; preds = %310
  store i1 true, ptr @programmable_fetch_config.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 206, i32 noundef 9, ptr noundef null) #12
  br label %320

320:                                              ; preds = %319, %310
  br i1 %315, label %513, label %321

321:                                              ; preds = %320
  %322 = load ptr, ptr %32, align 4
  %323 = getelementptr inbounds %struct.dpu_hw_intf, ptr %322, i32 0, i32 3
  %324 = load ptr, ptr %323, align 4
  %325 = getelementptr inbounds %struct.dpu_intf_cfg, ptr %324, i32 0, i32 7
  %326 = load i32, ptr %325, align 4
  %327 = getelementptr inbounds %struct.intf_timing_params, ptr %4, i32 0, i32 6
  %328 = load i32, ptr %327, align 4
  %329 = getelementptr inbounds %struct.intf_timing_params, ptr %4, i32 0, i32 9
  %330 = load i32, ptr %329, align 4
  %331 = add i32 %330, %328
  %332 = sub i32 %326, %331
  %333 = icmp ugt i32 %326, %331
  br i1 %333, label %355, label %334

334:                                              ; preds = %321
  %335 = load i32, ptr @__drm_debug, align 4
  %336 = and i32 %335, 4
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %408, label %338

338:                                              ; preds = %334
  br i1 %253, label %352, label %339

339:                                              ; preds = %338
  %340 = load ptr, ptr %0, align 4
  %341 = icmp eq ptr %340, null
  br i1 %341, label %345, label %342

342:                                              ; preds = %339
  %343 = getelementptr inbounds %struct.drm_encoder, ptr %340, i32 0, i32 2
  %344 = load i32, ptr %343, align 4
  br label %345

345:                                              ; preds = %342, %339
  %346 = phi i32 [ -1, %339 ], [ %344, %342 ]
  %347 = icmp eq ptr %322, null
  br i1 %347, label %352, label %348

348:                                              ; preds = %345
  %349 = getelementptr inbounds %struct.dpu_hw_intf, ptr %322, i32 0, i32 2
  %350 = load i32, ptr %349, align 4
  %351 = add i32 %350, -1
  br label %352

352:                                              ; preds = %348, %345, %338
  %353 = phi i32 [ %346, %348 ], [ %346, %345 ], [ -1, %338 ]
  %354 = phi i32 [ %351, %348 ], [ -1, %345 ], [ -1, %338 ]
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.18, i32 noundef %353, i32 noundef %354) #12
  br label %408

355:                                              ; preds = %321
  %356 = getelementptr inbounds %struct.intf_timing_params, ptr %4, i32 0, i32 7
  %357 = load i32, ptr %356, align 4
  %358 = icmp ult i32 %357, %332
  br i1 %358, label %359, label %387

359:                                              ; preds = %355
  %360 = load i1, ptr @programmable_fetch_get_num_lines.__already_done, align 1
  br i1 %360, label %363, label %361, !prof !16

361:                                              ; preds = %359
  store i1 true, ptr @programmable_fetch_get_num_lines.__already_done, align 1
  %362 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.programmable_fetch_get_num_lines, i32 noundef 166) #10
  br label %363

363:                                              ; preds = %361, %359
  %364 = load i32, ptr @__drm_debug, align 4
  %365 = and i32 %364, 4
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %385, label %367

367:                                              ; preds = %363
  br i1 %253, label %382, label %368

368:                                              ; preds = %367
  %369 = load ptr, ptr %0, align 4
  %370 = icmp eq ptr %369, null
  br i1 %370, label %374, label %371

371:                                              ; preds = %368
  %372 = getelementptr inbounds %struct.drm_encoder, ptr %369, i32 0, i32 2
  %373 = load i32, ptr %372, align 4
  br label %374

374:                                              ; preds = %371, %368
  %375 = phi i32 [ -1, %368 ], [ %373, %371 ]
  %376 = load ptr, ptr %32, align 4
  %377 = icmp eq ptr %376, null
  br i1 %377, label %382, label %378

378:                                              ; preds = %374
  %379 = getelementptr inbounds %struct.dpu_hw_intf, ptr %376, i32 0, i32 2
  %380 = load i32, ptr %379, align 4
  %381 = add i32 %380, -1
  br label %382

382:                                              ; preds = %378, %374, %367
  %383 = phi i32 [ %375, %378 ], [ %375, %374 ], [ -1, %367 ]
  %384 = phi i32 [ %381, %378 ], [ -1, %374 ], [ -1, %367 ]
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.20, i32 noundef %383, i32 noundef %384) #12
  br label %385

385:                                              ; preds = %382, %363
  %386 = load i32, ptr %356, align 4
  br label %408

387:                                              ; preds = %355
  %388 = load i32, ptr @__drm_debug, align 4
  %389 = and i32 %388, 4
  %390 = icmp eq i32 %389, 0
  br i1 %390, label %408, label %391

391:                                              ; preds = %387
  br i1 %253, label %405, label %392

392:                                              ; preds = %391
  %393 = load ptr, ptr %0, align 4
  %394 = icmp eq ptr %393, null
  br i1 %394, label %398, label %395

395:                                              ; preds = %392
  %396 = getelementptr inbounds %struct.drm_encoder, ptr %393, i32 0, i32 2
  %397 = load i32, ptr %396, align 4
  br label %398

398:                                              ; preds = %395, %392
  %399 = phi i32 [ -1, %392 ], [ %397, %395 ]
  %400 = icmp eq ptr %322, null
  br i1 %400, label %405, label %401

401:                                              ; preds = %398
  %402 = getelementptr inbounds %struct.dpu_hw_intf, ptr %322, i32 0, i32 2
  %403 = load i32, ptr %402, align 4
  %404 = add i32 %403, -1
  br label %405

405:                                              ; preds = %401, %398, %391
  %406 = phi i32 [ %399, %401 ], [ %399, %398 ], [ -1, %391 ]
  %407 = phi i32 [ %404, %401 ], [ -1, %398 ], [ -1, %391 ]
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.21, i32 noundef %406, i32 noundef %407) #12
  br label %408

408:                                              ; preds = %405, %387, %385, %352, %334
  %409 = phi i32 [ %386, %385 ], [ 0, %334 ], [ 0, %352 ], [ %332, %387 ], [ %332, %405 ]
  %410 = load i32, ptr @__drm_debug, align 4
  %411 = and i32 %410, 4
  %412 = icmp eq i32 %411, 0
  br i1 %412, label %456, label %413

413:                                              ; preds = %408
  br i1 %253, label %428, label %414

414:                                              ; preds = %413
  %415 = load ptr, ptr %0, align 4
  %416 = icmp eq ptr %415, null
  br i1 %416, label %420, label %417

417:                                              ; preds = %414
  %418 = getelementptr inbounds %struct.drm_encoder, ptr %415, i32 0, i32 2
  %419 = load i32, ptr %418, align 4
  br label %420

420:                                              ; preds = %417, %414
  %421 = phi i32 [ -1, %414 ], [ %419, %417 ]
  %422 = load ptr, ptr %32, align 4
  %423 = icmp eq ptr %422, null
  br i1 %423, label %428, label %424

424:                                              ; preds = %420
  %425 = getelementptr inbounds %struct.dpu_hw_intf, ptr %422, i32 0, i32 2
  %426 = load i32, ptr %425, align 4
  %427 = add i32 %426, -1
  br label %428

428:                                              ; preds = %424, %420, %413
  %429 = phi i32 [ %421, %424 ], [ %421, %420 ], [ -1, %413 ]
  %430 = phi i32 [ %427, %424 ], [ -1, %420 ], [ -1, %413 ]
  %431 = getelementptr inbounds %struct.intf_timing_params, ptr %4, i32 0, i32 7
  %432 = load i32, ptr %431, align 4
  %433 = load i32, ptr %327, align 4
  %434 = load i32, ptr %329, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.22, i32 noundef %429, i32 noundef %430, i32 noundef %432, i32 noundef %433, i32 noundef %434) #12
  %435 = load i32, ptr @__drm_debug, align 4
  %436 = and i32 %435, 4
  %437 = icmp eq i32 %436, 0
  br i1 %437, label %456, label %438

438:                                              ; preds = %428
  br i1 %253, label %453, label %439

439:                                              ; preds = %438
  %440 = load ptr, ptr %0, align 4
  %441 = icmp eq ptr %440, null
  br i1 %441, label %445, label %442

442:                                              ; preds = %439
  %443 = getelementptr inbounds %struct.drm_encoder, ptr %440, i32 0, i32 2
  %444 = load i32, ptr %443, align 4
  br label %445

445:                                              ; preds = %442, %439
  %446 = phi i32 [ -1, %439 ], [ %444, %442 ]
  %447 = load ptr, ptr %32, align 4
  %448 = icmp eq ptr %447, null
  br i1 %448, label %453, label %449

449:                                              ; preds = %445
  %450 = getelementptr inbounds %struct.dpu_hw_intf, ptr %447, i32 0, i32 2
  %451 = load i32, ptr %450, align 4
  %452 = add i32 %451, -1
  br label %453

453:                                              ; preds = %449, %445, %438
  %454 = phi i32 [ %446, %449 ], [ %446, %445 ], [ -1, %438 ]
  %455 = phi i32 [ %452, %449 ], [ -1, %445 ], [ -1, %438 ]
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.23, i32 noundef %454, i32 noundef %455, i32 noundef %326, i32 noundef %332, i32 noundef %409) #12
  br label %456

456:                                              ; preds = %453, %428, %408
  %457 = icmp eq i32 %409, 0
  br i1 %457, label %483, label %458

458:                                              ; preds = %456
  %459 = getelementptr inbounds %struct.intf_timing_params, ptr %4, i32 0, i32 3
  %460 = load i32, ptr %459, align 4
  %461 = load i32, ptr %327, align 4
  %462 = getelementptr inbounds %struct.intf_timing_params, ptr %4, i32 0, i32 7
  %463 = load i32, ptr %462, align 4
  %464 = load i32, ptr %329, align 4
  %465 = getelementptr inbounds %struct.intf_timing_params, ptr %4, i32 0, i32 2
  %466 = load i32, ptr %465, align 4
  %467 = getelementptr inbounds %struct.intf_timing_params, ptr %4, i32 0, i32 4
  %468 = load i32, ptr %467, align 4
  %469 = getelementptr inbounds %struct.intf_timing_params, ptr %4, i32 0, i32 5
  %470 = load i32, ptr %469, align 4
  %471 = getelementptr inbounds %struct.intf_timing_params, ptr %4, i32 0, i32 8
  %472 = load i32, ptr %471, align 4
  %473 = add i32 %468, %466
  %474 = add i32 %473, %470
  %475 = add i32 %474, %472
  %476 = sub i32 %460, %409
  %477 = add i32 %476, %461
  %478 = add i32 %477, %463
  %479 = add i32 %478, %464
  %480 = mul i32 %475, %479
  %481 = add i32 %480, 1
  store i8 1, ptr %2, align 8
  %482 = getelementptr inbounds %struct.intf_prog_fetch, ptr %2, i32 0, i32 1
  store i32 %481, ptr %482, align 4
  br label %483

483:                                              ; preds = %458, %456
  %484 = phi i32 [ %481, %458 ], [ 0, %456 ]
  %485 = load i32, ptr @__drm_debug, align 4
  %486 = and i32 %485, 4
  %487 = icmp eq i32 %486, 0
  br i1 %487, label %506, label %488

488:                                              ; preds = %483
  br i1 %253, label %503, label %489

489:                                              ; preds = %488
  %490 = load ptr, ptr %0, align 4
  %491 = icmp eq ptr %490, null
  br i1 %491, label %495, label %492

492:                                              ; preds = %489
  %493 = getelementptr inbounds %struct.drm_encoder, ptr %490, i32 0, i32 2
  %494 = load i32, ptr %493, align 4
  br label %495

495:                                              ; preds = %492, %489
  %496 = phi i32 [ -1, %489 ], [ %494, %492 ]
  %497 = load ptr, ptr %32, align 4
  %498 = icmp eq ptr %497, null
  br i1 %498, label %503, label %499

499:                                              ; preds = %495
  %500 = getelementptr inbounds %struct.dpu_hw_intf, ptr %497, i32 0, i32 2
  %501 = load i32, ptr %500, align 4
  %502 = add i32 %501, -1
  br label %503

503:                                              ; preds = %499, %495, %488
  %504 = phi i32 [ %496, %499 ], [ %496, %495 ], [ -1, %488 ]
  %505 = phi i32 [ %502, %499 ], [ -1, %495 ], [ -1, %488 ]
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.17, i32 noundef %504, i32 noundef %505, i32 noundef %409, i32 noundef %484) #12
  br label %506

506:                                              ; preds = %503, %483
  %507 = load ptr, ptr %284, align 4
  %508 = call i32 @_raw_spin_lock_irqsave(ptr noundef %507) #12
  %509 = load ptr, ptr %32, align 4
  %510 = getelementptr inbounds %struct.dpu_hw_intf, ptr %509, i32 0, i32 5, i32 1
  %511 = load ptr, ptr %510, align 4
  call void %511(ptr noundef %509, ptr noundef nonnull %2) #12
  %512 = load ptr, ptr %284, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %512, i32 noundef %508) #12
  br label %513

513:                                              ; preds = %506, %320
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #12
  br label %514

514:                                              ; preds = %513, %55, %45
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %3) #12
  %515 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 10
  %516 = load i32, ptr %515, align 4
  %517 = icmp eq i32 %516, 2
  br i1 %517, label %536, label %518

518:                                              ; preds = %514
  %519 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %7, i32 0, i32 9, i32 5
  %520 = load ptr, ptr %519, align 4
  %521 = load ptr, ptr %32, align 4
  %522 = getelementptr inbounds %struct.dpu_hw_intf, ptr %521, i32 0, i32 2
  %523 = load i32, ptr %522, align 4
  call void %520(ptr noundef %7, i32 noundef %523) #12
  %524 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %7, i32 0, i32 9, i32 6
  %525 = load ptr, ptr %524, align 4
  %526 = icmp eq ptr %525, null
  br i1 %526, label %536, label %527

527:                                              ; preds = %518
  %528 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 6
  %529 = load ptr, ptr %528, align 4
  %530 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %529, i32 0, i32 4
  %531 = load ptr, ptr %530, align 4
  %532 = icmp eq ptr %531, null
  br i1 %532, label %536, label %533

533:                                              ; preds = %527
  %534 = getelementptr inbounds %struct.dpu_hw_merge_3d, ptr %531, i32 0, i32 2
  %535 = load i32, ptr %534, align 4
  call void %525(ptr noundef %7, i32 noundef %535) #12
  br label %536

536:                                              ; preds = %533, %527, %518, %514
  %537 = load i32, ptr @__drm_debug, align 4
  %538 = and i32 %537, 4
  %539 = icmp eq i32 %538, 0
  br i1 %539, label %567, label %540

540:                                              ; preds = %536
  %541 = icmp eq ptr %0, null
  br i1 %541, label %542, label %544

542:                                              ; preds = %540
  %543 = load ptr, ptr %32, align 4
  br label %558

544:                                              ; preds = %540
  %545 = load ptr, ptr %0, align 4
  %546 = icmp eq ptr %545, null
  br i1 %546, label %550, label %547

547:                                              ; preds = %544
  %548 = getelementptr inbounds %struct.drm_encoder, ptr %545, i32 0, i32 2
  %549 = load i32, ptr %548, align 4
  br label %550

550:                                              ; preds = %547, %544
  %551 = phi i32 [ -1, %544 ], [ %549, %547 ]
  %552 = load ptr, ptr %32, align 4
  %553 = icmp eq ptr %552, null
  br i1 %553, label %558, label %554

554:                                              ; preds = %550
  %555 = getelementptr inbounds %struct.dpu_hw_intf, ptr %552, i32 0, i32 2
  %556 = load i32, ptr %555, align 4
  %557 = add i32 %556, -1
  br label %558

558:                                              ; preds = %554, %550, %542
  %559 = phi ptr [ %552, %554 ], [ null, %550 ], [ %543, %542 ]
  %560 = phi i32 [ %551, %554 ], [ %551, %550 ], [ -1, %542 ]
  %561 = phi i32 [ %557, %554 ], [ -1, %550 ], [ -1, %542 ]
  %562 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %7, i32 0, i32 2
  %563 = load i32, ptr %562, align 4
  %564 = add i32 %563, -1
  %565 = getelementptr inbounds %struct.dpu_hw_intf, ptr %559, i32 0, i32 2
  %566 = load i32, ptr %565, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.9, i32 noundef %560, i32 noundef %561, i32 noundef %564, i32 noundef %566) #12
  br label %567

567:                                              ; preds = %558, %536
  %568 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 17
  store volatile i32 0, ptr %568, align 4
  %569 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 14
  %570 = load i32, ptr %569, align 4
  %571 = icmp eq i32 %570, 1
  br i1 %571, label %572, label %573

572:                                              ; preds = %567
  store i32 2, ptr %569, align 4
  br label %573

573:                                              ; preds = %572, %567, %37
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_encoder_phys_vid_disable(ptr noundef %0) #0 {
  %2 = alloca %struct.dpu_encoder_wait_info, align 8
  %3 = load ptr, ptr %0, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %5, %1
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.dpu_encoder_phys_vid_disable, i32 noundef 552) #10
  br label %73

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 7
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 5
  %16 = load ptr, ptr %15, align 4
  %17 = icmp ne ptr %16, null
  %18 = zext i1 %17 to i32
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.dpu_encoder_phys_vid_disable, i32 noundef 558, i32 noundef 0, i32 noundef %18) #10
  br label %73

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct.dpu_hw_intf, ptr %12, i32 0, i32 5, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %25, !prof !14

24:                                               ; preds = %20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 562, i32 noundef 9, ptr noundef null) #12
  br label %73

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 14
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @__func__.dpu_encoder_phys_vid_disable, i32 noundef 566) #10
  br label %73

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 13
  %33 = load ptr, ptr %32, align 4
  %34 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %33) #12
  %35 = load ptr, ptr %11, align 4
  %36 = getelementptr inbounds %struct.dpu_hw_intf, ptr %35, i32 0, i32 5, i32 2
  %37 = load ptr, ptr %36, align 4
  tail call void %37(ptr noundef %35, i8 noundef zeroext 0) #12
  %38 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 10
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 2
  br i1 %40, label %46, label %41

41:                                               ; preds = %31
  %42 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %42) #12, !srcloc !11
  %43 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %42, ptr %42, i32 1, ptr elementtype(i32) %42) #12, !srcloc !18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !19
  %44 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %44) #12, !srcloc !11
  %45 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %44, ptr %44, i32 1, ptr elementtype(i32) %44) #12, !srcloc !18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !19
  br label %46

46:                                               ; preds = %41, %31
  %47 = load ptr, ptr %32, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %47, i32 noundef %34) #12
  %48 = load i32, ptr %38, align 4
  %49 = icmp eq i32 %48, 2
  br i1 %49, label %72, label %50

50:                                               ; preds = %46
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #12
  %51 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 20
  store ptr %51, ptr %2, align 8
  %52 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 19
  %53 = getelementptr inbounds %struct.dpu_encoder_wait_info, ptr %2, i32 0, i32 1
  store ptr %52, ptr %53, align 4
  %54 = getelementptr inbounds %struct.dpu_encoder_wait_info, ptr %2, i32 0, i32 2
  store i64 84, ptr %54, align 8
  %55 = call i32 @dpu_encoder_helper_wait_for_irq(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #12
  %56 = icmp eq i32 %55, -110
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  call void @dpu_encoder_helper_report_irq_timeout(ptr noundef %0, i32 noundef 0) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #12
  br label %60

58:                                               ; preds = %50
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #12
  %59 = icmp eq i32 %55, 0
  br i1 %59, label %72, label %60

60:                                               ; preds = %58, %57
  store volatile i32 0, ptr %52, align 4
  %61 = load ptr, ptr %0, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.drm_encoder, ptr %61, i32 0, i32 2
  %65 = load i32, ptr %64, align 4
  br label %66

66:                                               ; preds = %63, %60
  %67 = phi i32 [ %65, %63 ], [ -1, %60 ]
  %68 = load ptr, ptr %11, align 4
  %69 = getelementptr inbounds %struct.dpu_hw_intf, ptr %68, i32 0, i32 2
  %70 = load i32, ptr %69, align 4
  %71 = add i32 %70, -1
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.27, i32 noundef %67, i32 noundef %71, i32 noundef %55) #12
  br label %72

72:                                               ; preds = %66, %58, %46
  store i32 1, ptr %26, align 4
  br label %73

73:                                               ; preds = %72, %29, %24, %14, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_encoder_phys_vid_destroy(ptr noundef %0) #0 {
  %2 = load i32, ptr @__drm_debug, align 4
  %3 = and i32 %2, 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %25, label %5

5:                                                ; preds = %1
  %6 = icmp eq ptr %0, null
  br i1 %6, label %22, label %7

7:                                                ; preds = %5
  %8 = load ptr, ptr %0, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.drm_encoder, ptr %8, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  br label %13

13:                                               ; preds = %10, %7
  %14 = phi i32 [ -1, %7 ], [ %12, %10 ]
  %15 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 7
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.dpu_hw_intf, ptr %16, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, -1
  br label %22

22:                                               ; preds = %18, %13, %5
  %23 = phi i32 [ %14, %18 ], [ %14, %13 ], [ -1, %5 ]
  %24 = phi i32 [ %21, %18 ], [ -1, %13 ], [ -1, %5 ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef %23, i32 noundef %24) #12
  br label %25

25:                                               ; preds = %22, %1
  tail call void @kfree(ptr noundef %0) #12
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @dpu_encoder_phys_vid_get_hw_resources(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #6 {
  %3 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 12
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, -1
  %6 = getelementptr [8 x i32], ptr %1, i32 0, i32 %5
  store i32 2, ptr %6, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dpu_encoder_phys_vid_control_vblank_irq(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 15
  %4 = load volatile i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 10
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %52, label %8

8:                                                ; preds = %2
  %9 = xor i1 %1, true
  %10 = icmp eq i32 %4, 0
  %11 = select i1 %9, i1 %10, i1 false
  br i1 %11, label %37, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr %0, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.drm_encoder, ptr %13, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  br label %18

18:                                               ; preds = %15, %12
  %19 = phi i32 [ %17, %15 ], [ -1, %12 ]
  %20 = zext i1 %1 to i32
  %21 = load volatile i32, ptr %3, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 32, ptr noundef nonnull @.str.28, i32 noundef %19, i32 noundef %20, i32 noundef %21) #12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %3) #12
  br i1 %1, label %22, label %28

22:                                               ; preds = %18
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %3, ptr %3, i32 1, ptr elementtype(i32) %3) #12, !srcloc !18
  %24 = extractvalue { i32, i32 } %23, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !19
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %52

26:                                               ; preds = %22
  %27 = tail call i32 @dpu_encoder_helper_register_irq(ptr noundef %0, i32 noundef 0) #12
  br label %34

28:                                               ; preds = %18
  %29 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %3, ptr %3, i32 1, ptr elementtype(i32) %3) #12, !srcloc !20
  %30 = extractvalue { i32, i32 } %29, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !21
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %52

32:                                               ; preds = %28
  %33 = tail call i32 @dpu_encoder_helper_unregister_irq(ptr noundef %0, i32 noundef 0) #12
  br label %34

34:                                               ; preds = %32, %26
  %35 = phi i32 [ %27, %26 ], [ %33, %32 ]
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %52, label %37

37:                                               ; preds = %34, %8
  %38 = phi i32 [ %35, %34 ], [ -22, %8 ]
  %39 = load ptr, ptr %0, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.drm_encoder, ptr %39, i32 0, i32 2
  %43 = load i32, ptr %42, align 4
  br label %44

44:                                               ; preds = %41, %37
  %45 = phi i32 [ %43, %41 ], [ -1, %37 ]
  %46 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 7
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.dpu_hw_intf, ptr %47, i32 0, i32 2
  %49 = load i32, ptr %48, align 4
  %50 = add i32 %49, -1
  %51 = zext i1 %1 to i32
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.29, i32 noundef %45, i32 noundef %50, i32 noundef %38, i32 noundef %51, i32 noundef %4) #12
  br label %52

52:                                               ; preds = %44, %34, %28, %22, %2
  %53 = phi i32 [ %38, %44 ], [ 0, %34 ], [ 0, %28 ], [ 0, %2 ], [ 0, %22 ]
  ret i32 %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dpu_encoder_phys_vid_wait_for_commit_done(ptr noundef %0) #0 {
  %2 = alloca %struct.wait_queue_entry, align 4
  %3 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %35, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %4, i32 0, i32 9, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 %8(ptr noundef nonnull %4) #12
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %35, label %11

11:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false), !annotation !15
  call void @init_wait_entry(ptr noundef nonnull %2, i32 noundef 0) #12
  %12 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 20
  %13 = call i32 @prepare_to_wait_event(ptr noundef %12, ptr noundef nonnull %2, i32 noundef 2) #12
  %14 = load ptr, ptr %7, align 4
  %15 = call i32 %14(ptr noundef nonnull %4) #12
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  call void @finish_wait(ptr noundef %12, ptr noundef nonnull %2) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #12
  br label %35

18:                                               ; preds = %18, %11
  %19 = phi i32 [ %28, %18 ], [ 5, %11 ]
  %20 = call i32 @schedule_timeout(i32 noundef %19) #12
  %21 = call i32 @prepare_to_wait_event(ptr noundef %12, ptr noundef nonnull %2, i32 noundef 2) #12
  %22 = load ptr, ptr %7, align 4
  %23 = call i32 %22(ptr noundef nonnull %4) #12
  %24 = icmp eq i32 %23, 0
  %25 = xor i1 %24, true
  %26 = icmp ne i32 %20, 0
  %27 = select i1 %25, i1 true, i1 %26
  %28 = select i1 %27, i32 %20, i32 1
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %24, i1 true, i1 %29
  br i1 %30, label %31, label %18

31:                                               ; preds = %18
  %32 = icmp slt i32 %28, 1
  call void @finish_wait(ptr noundef %12, ptr noundef nonnull %2) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #12
  br i1 %32, label %33, label %35

33:                                               ; preds = %31
  %34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.dpu_encoder_phys_vid_wait_for_commit_done, i32 noundef 513) #10
  br label %35

35:                                               ; preds = %33, %31, %17, %6, %1
  %36 = phi i32 [ -110, %33 ], [ 0, %1 ], [ 0, %31 ], [ 0, %6 ], [ 0, %17 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dpu_encoder_phys_vid_wait_for_vblank(ptr noundef %0) #0 {
  %2 = alloca %struct.dpu_encoder_wait_info, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #12
  %3 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 20
  store ptr %3, ptr %2, align 8
  %4 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 19
  %5 = getelementptr inbounds %struct.dpu_encoder_wait_info, ptr %2, i32 0, i32 1
  store ptr %4, ptr %5, align 4
  %6 = getelementptr inbounds %struct.dpu_encoder_wait_info, ptr %2, i32 0, i32 2
  store i64 84, ptr %6, align 8
  %7 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 10
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = call i32 @dpu_encoder_helper_wait_for_irq(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #12
  %12 = icmp eq i32 %11, -110
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  call void @dpu_encoder_helper_report_irq_timeout(ptr noundef %0, i32 noundef 0) #12
  br label %14

14:                                               ; preds = %13, %10, %1
  %15 = phi i32 [ 0, %1 ], [ -110, %13 ], [ %11, %10 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #12
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_encoder_phys_vid_irq_control(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.drm_encoder, ptr %3, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  br label %8

8:                                                ; preds = %5, %2
  %9 = phi i32 [ %7, %5 ], [ -1, %2 ]
  %10 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 7
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.dpu_hw_intf, ptr %11, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, -1
  %15 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 15
  %16 = load volatile i32, ptr %15, align 4
  %17 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_phys_vid_irq_ctrl, i32 0, i32 1), align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %8
  %20 = tail call ptr @llvm.thread.pointer() #12
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
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !22
  %31 = tail call i32 @__traceiter_dpu_enc_phys_vid_irq_ctrl(ptr noundef null, i32 noundef %9, i32 noundef %14, i1 noundef zeroext %1, i32 noundef %16) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !23
  br label %32

32:                                               ; preds = %30, %19, %8
  br i1 %1, label %33, label %39

33:                                               ; preds = %32
  %34 = tail call i32 @dpu_encoder_phys_vid_control_vblank_irq(ptr noundef %0, i1 noundef zeroext true)
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %37, label %36, !prof !16

36:                                               ; preds = %33
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 628, i32 noundef 9, ptr noundef null) #12
  br label %42

37:                                               ; preds = %33
  %38 = tail call i32 @dpu_encoder_helper_register_irq(ptr noundef %0, i32 noundef 2) #12
  br label %42

39:                                               ; preds = %32
  %40 = tail call i32 @dpu_encoder_phys_vid_control_vblank_irq(ptr noundef %0, i1 noundef zeroext false)
  %41 = tail call i32 @dpu_encoder_helper_unregister_irq(ptr noundef %0, i32 noundef 2) #12
  br label %42

42:                                               ; preds = %39, %37, %36
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_encoder_phys_vid_prepare_for_kickoff(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %4, i32 0, i32 9, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %36, label %8

8:                                                ; preds = %1
  %9 = tail call i32 %6(ptr noundef %4) #12
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %36, label %11

11:                                               ; preds = %8
  %12 = icmp eq ptr %0, null
  br i1 %12, label %28, label %13

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
  %21 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 7
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.dpu_hw_intf, ptr %22, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, -1
  br label %28

28:                                               ; preds = %24, %19, %11
  %29 = phi i32 [ %20, %24 ], [ %20, %19 ], [ -1, %11 ]
  %30 = phi i32 [ %27, %24 ], [ -1, %19 ], [ -1, %11 ]
  %31 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %4, i32 0, i32 2
  %32 = load i32, ptr %31, align 4
  %33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @__func__.dpu_encoder_phys_vid_prepare_for_kickoff, i32 noundef 540, i32 noundef %29, i32 noundef %30, i32 noundef %32, i32 noundef %9) #10
  %34 = load ptr, ptr %2, align 4
  tail call void @msm_disp_snapshot_state(ptr noundef %34) #12
  %35 = tail call i32 @dpu_encoder_helper_unregister_irq(ptr noundef %0, i32 noundef 0) #12
  br label %36

36:                                               ; preds = %28, %8, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_encoder_phys_vid_handle_post_kickoff(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 14
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 2
  br i1 %4, label %5, label %41

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.drm_encoder, ptr %6, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  br label %11

11:                                               ; preds = %8, %5
  %12 = phi i32 [ %10, %8 ], [ -1, %5 ]
  %13 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 7
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.dpu_hw_intf, ptr %14, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, -1
  %18 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_phys_vid_post_kickoff, i32 0, i32 1), align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %11
  %21 = tail call ptr @llvm.thread.pointer() #12
  %22 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %23 = load i32, ptr %22, align 8
  %24 = lshr i32 %23, 5
  %25 = getelementptr i32, ptr @__cpu_online_mask, i32 %24
  %26 = load volatile i32, ptr %25, align 4
  %27 = and i32 %23, 31
  %28 = shl nuw i32 1, %27
  %29 = and i32 %28, %26
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %20
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !24
  %32 = tail call i32 @__traceiter_dpu_enc_phys_vid_post_kickoff(ptr noundef null, i32 noundef %12, i32 noundef %17) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !25
  br label %33

33:                                               ; preds = %31, %20, %11
  %34 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 13
  %35 = load ptr, ptr %34, align 4
  %36 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %35) #12
  %37 = load ptr, ptr %13, align 4
  %38 = getelementptr inbounds %struct.dpu_hw_intf, ptr %37, i32 0, i32 5, i32 2
  %39 = load ptr, ptr %38, align 4
  tail call void %39(ptr noundef %37, i8 noundef zeroext 1) #12
  %40 = load ptr, ptr %34, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %40, i32 noundef %36) #12
  store i32 3, ptr %2, align 4
  br label %41

41:                                               ; preds = %33, %1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i1 @dpu_encoder_phys_vid_needs_single_flush(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 10
  %3 = load i32, ptr %2, align 4
  %4 = icmp ne i32 %3, 0
  ret i1 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dpu_encoder_phys_vid_get_line_count(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 10
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 2
  br i1 %4, label %15, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.dpu_hw_intf, ptr %7, i32 0, i32 5, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = tail call i32 %11(ptr noundef nonnull %7) #12
  br label %15

15:                                               ; preds = %13, %9, %5, %1
  %16 = phi i32 [ %14, %13 ], [ -22, %1 ], [ -22, %9 ], [ -22, %5 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dpu_encoder_phys_vid_get_frame_count(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.intf_status, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %2, i8 0, i32 12, i1 false)
  %3 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 9, i32 6
  %4 = load i16, ptr %3, align 2
  %5 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 9, i32 7
  %6 = load i16, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 9, i32 9
  %8 = load i16, ptr %7, align 4
  %9 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 10
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %45, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 7
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %45, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.dpu_hw_intf, ptr %14, i32 0, i32 5, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %45, label %20

20:                                               ; preds = %16
  call void %18(ptr noundef nonnull %14, ptr noundef nonnull %2) #12
  %21 = getelementptr inbounds %struct.intf_status, ptr %2, i32 0, i32 1
  %22 = load i8, ptr %21, align 1
  %23 = icmp ne i8 %22, 0
  %24 = load i8, ptr %2, align 4
  %25 = icmp ne i8 %24, 0
  %26 = select i1 %23, i1 %25, i1 false
  br i1 %26, label %27, label %42

27:                                               ; preds = %20
  %28 = zext i16 %8 to i32
  %29 = zext i16 %6 to i32
  %30 = zext i16 %4 to i32
  %31 = sub nsw i32 %30, %29
  %32 = add nsw i32 %31, %28
  %33 = getelementptr inbounds %struct.intf_status, ptr %2, i32 0, i32 3
  %34 = load i32, ptr %33, align 4
  %35 = icmp ule i32 %34, %32
  %36 = icmp ugt i32 %34, %28
  %37 = or i1 %35, %36
  br i1 %37, label %42, label %38

38:                                               ; preds = %27
  %39 = getelementptr inbounds %struct.intf_status, ptr %2, i32 0, i32 2
  %40 = load i32, ptr %39, align 4
  %41 = add i32 %40, 1
  br label %45

42:                                               ; preds = %27, %20
  %43 = getelementptr inbounds %struct.intf_status, ptr %2, i32 0, i32 2
  %44 = load i32, ptr %43, align 4
  br label %45

45:                                               ; preds = %42, %38, %16, %12, %1
  %46 = phi i32 [ %41, %38 ], [ %44, %42 ], [ -22, %1 ], [ -22, %16 ], [ -22, %12 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #12
  ret i32 %46
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_debug_printmodeline(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpu_encoder_helper_split_config(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dpu_get_dpu_format_ext(i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpu_encoder_helper_register_irq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpu_encoder_helper_unregister_irq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpu_encoder_helper_wait_for_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpu_encoder_helper_report_irq_timeout(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_enc_phys_vid_irq_ctrl(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_disp_snapshot_state(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_enc_phys_vid_post_kickoff(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_tracing_mark_write(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind }

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
!8 = !{i64 2155921339}
!9 = !{i64 2155921531}
!10 = !{i64 2147952021}
!11 = !{i64 451128, i64 2147941099, i64 2147941125, i64 2147941172, i64 2147941194, i64 2147941222, i64 2147941242}
!12 = !{i64 437697, i64 437722, i64 437744, i64 437760, i64 437772, i64 437792, i64 437816, i64 437832, i64 437844}
!13 = !{i64 2147952147}
!14 = !{!"branch_weights", i32 1, i32 2000}
!15 = !{!"auto-init"}
!16 = !{!"branch_weights", i32 2000, i32 1}
!17 = !{i64 2148050336}
!18 = !{i64 2147953198, i64 2147953230, i64 2147953259, i64 2147953293, i64 2147953324, i64 2147953347}
!19 = !{i64 2148050539}
!20 = !{i64 2147955555, i64 2147955587, i64 2147955616, i64 2147955650, i64 2147955681, i64 2147955704}
!21 = !{i64 2148053372}
!22 = !{i64 2156528417}
!23 = !{i64 2156528643}
!24 = !{i64 2156509777}
!25 = !{i64 2156509979}
