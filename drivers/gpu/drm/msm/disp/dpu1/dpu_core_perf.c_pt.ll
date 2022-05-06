; ModuleID = '/llk/IR/drivers/gpu/drm/msm/disp/dpu1/dpu_core_perf.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/disp/dpu1/dpu_core_perf.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.69, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.79, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.69 = type { %struct.list_head, ptr, %struct.spinlock }
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
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.79 = type { i32, ptr }
%struct.msm_drm_private = type { ptr, ptr, ptr, ptr, ptr, [2 x ptr], [3 x ptr], ptr, i8, i8, ptr, ptr, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, %struct.mutex, ptr, i32, [20 x ptr], i32, [8 x ptr], [8 x %struct.msm_drm_thread], i32, [8 x ptr], i32, [8 x ptr], i32, [8 x ptr], [3 x ptr], %struct.anon.82, %struct.notifier_block, %struct.shrinker, ptr, i32, i8 }
%struct.msm_drm_thread = type { ptr, i32, ptr }
%struct.anon.82 = type { i32, i32, %struct.drm_mm, %struct.spinlock }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.dpu_kms = type { %struct.msm_kms, ptr, i32, ptr, ptr, [2 x ptr], ptr, ptr, ptr, ptr, ptr, %struct.dpu_core_perf, %struct.drm_modeset_lock, %struct.drm_private_obj, %struct.dpu_rm, i8, [2 x ptr], ptr, i8, ptr, i8, %struct.dss_module_power, %struct.atomic_t, [2 x ptr], i32 }
%struct.msm_kms = type { ptr, ptr, i32, ptr, ptr, %struct.kthread_work, %struct.mutex, [8 x %struct.mutex], i32, [8 x %struct.msm_pending_timer] }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.msm_pending_timer = type { %struct.msm_hrtimer_work, ptr, ptr, i32 }
%struct.msm_hrtimer_work = type { %struct.hrtimer, %struct.kthread_work, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.dpu_core_perf = type { ptr, ptr, ptr, ptr, i64, i64, %struct.dpu_core_perf_tune, i32, i64, i64, i64 }
%struct.dpu_core_perf_tune = type { i32, i64, i64 }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.dpu_rm = type { [7 x ptr], [7 x ptr], [6 x ptr], [7 x ptr], [4 x ptr], [3 x ptr], i32 }
%struct.dss_module_power = type { i32, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dpu_crtc_state = type { %struct.drm_crtc_state, i8, i8, [2 x %struct.drm_rect], i64, %struct.dpu_core_perf_params, i32, [2 x %struct.dpu_crtc_mixer], i32, [2 x ptr], i32, i32 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.dpu_core_perf_params = type { i64, i64, i64 }
%struct.dpu_crtc_mixer = type { ptr, ptr, ptr, i32, i32 }
%struct.dpu_plane_state = type { %struct.drm_plane_state, ptr, i32, i8, i32, i32, i8, i64, i64 }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.dpu_mdss_cfg = type { i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.dpu_reg_dma_cfg, i32, i32, ptr, %struct.dpu_perf_cfg, ptr, ptr, ptr, i32 }
%struct.dpu_reg_dma_cfg = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dpu_perf_cfg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], [3 x %struct.dpu_qos_lut_tbl], [2 x %struct.dpu_perf_cdp_cfg] }
%struct.dpu_qos_lut_tbl = type { i32, ptr }
%struct.dpu_perf_cdp_cfg = type { i8, i8 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.dpu_crtc = type { %struct.drm_crtc, [12 x i8], ptr, i32, i32, i64, i64, i8, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.atomic_t, [4 x %struct.dpu_crtc_frame_event], %struct.list_head, %struct.spinlock, %struct.completion, %struct.spinlock, %struct.dpu_core_perf_params, %struct.dpu_crtc_smmu_state_data }
%struct.dpu_crtc_frame_event = type { %struct.kthread_work, ptr, %struct.list_head, i64, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dpu_crtc_smmu_state_data = type { i32, i32, i32 }
%struct.dss_clk = type { ptr, [32 x i8], i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [39 x i8] c"\013[drm:%s:%d] [dpu error]invalid crtc\0A\00", align 1
@__func__.dpu_core_perf_crtc_check = private unnamed_addr constant [25 x i8] c"dpu_core_perf_crtc_check\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"\013[drm:%s:%d] [dpu error]invalid parameters\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"crtc:%d bw:%llu ctrl:%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"calculated bandwidth=%uk\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"final threshold bw limit = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [56 x i8] c"\013[drm:%s:%d] [dpu error]no bandwidth limits specified\0A\00", align 1
@.str.6 = private unnamed_addr constant [57 x i8] c"\013[drm:%s:%d] [dpu error]exceeds bandwidth: %ukb > %ukb\0A\00", align 1
@__func__.dpu_core_perf_crtc_release_bw = private unnamed_addr constant [30 x i8] c"dpu_core_perf_crtc_release_bw\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"\013[drm:%s:%d] [dpu error]invalid kms\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"Release BW crtc=%d\0A\00", align 1
@__func__.dpu_core_perf_crtc_update = private unnamed_addr constant [26 x i8] c"dpu_core_perf_crtc_update\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"crtc:%d stop_req:%d core_clk:%llu\0A\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"crtc=%d p=%d new_bw=%llu,old_bw=%llu\0A\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"crtc=%d disable\0A\00", align 1
@.str.13 = private unnamed_addr constant [59 x i8] c"\013[drm:%s:%d] [dpu error]failed to set %s clock rate %llu\0A\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"update clk rate = %lld HZ\0A\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"core_perf\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"max_core_clk_rate\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"core_clk_rate\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"enable_bw_release\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"threshold_low\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"threshold_high\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"min_core_ib\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"min_llcc_ib\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"min_dram_ib\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"perf_mode\00", align 1
@dpu_core_perf_mode_fops = internal constant %struct.file_operations { ptr null, ptr null, ptr @_dpu_core_perf_mode_read, ptr @_dpu_core_perf_mode_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.25 = private unnamed_addr constant [18 x i8] c"fix_core_clk_rate\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"fix_core_ib_vote\00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"fix_core_ab_vote\00", align 1
@__func__.dpu_core_perf_destroy = private unnamed_addr constant [22 x i8] c"dpu_core_perf_destroy\00", align 1
@.str.28 = private unnamed_addr constant [41 x i8] c"optional max core clk rate, use default\0A\00", align 1
@__func__._dpu_core_perf_calc_crtc = private unnamed_addr constant [25 x i8] c"_dpu_core_perf_calc_crtc\00", align 1
@.str.29 = private unnamed_addr constant [49 x i8] c"crtc=%d clk_rate=%llu core_ib=%llu core_ab=%llu\0A\00", align 1
@__tracepoint_dpu_cmd_release_bw = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@.str.31 = private unnamed_addr constant [26 x i8] c"crtc=%d bw=%llu paths:%d\0A\00", align 1
@__tracepoint_dpu_perf_crtc_update = external dso_local global %struct.tracepoint, align 4
@.str.32 = private unnamed_addr constant [10 x i8] c"clk:%llu\0A\00", align 1
@__tracepoint_dpu_core_perf_update_clk = external dso_local global %struct.tracepoint, align 4
@.str.33 = private unnamed_addr constant [44 x i8] c"mode %d min_mdp_clk %llu min_bus_vote %llu\0A\00", align 1
@.str.34 = private unnamed_addr constant [30 x i8] c"\016[drm] fix performance mode\0A\00", align 1
@.str.35 = private unnamed_addr constant [34 x i8] c"\016[drm] minimum performance mode\0A\00", align 1
@.str.36 = private unnamed_addr constant [33 x i8] c"\016[drm] normal performance mode\0A\00", align 1
@__drm_debug = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dpu_core_perf_crtc_check(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dpu_core_perf_crtc_check, i32 noundef 152) #7
  br label %228

8:                                                ; preds = %2
  %9 = load ptr, ptr %0, align 8
  %10 = getelementptr inbounds %struct.drm_device, ptr %9, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.msm_drm_private, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.dpu_kms, ptr %13, i32 0, i32 3
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %8
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.dpu_core_perf_crtc_check, i32 noundef 158) #7
  br label %228

19:                                               ; preds = %8
  %20 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 22
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %228, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.dpu_crtc_state, ptr %1, i32 0, i32 5
  %25 = icmp ne ptr %13, null
  %26 = icmp ne ptr %24, null
  %27 = select i1 %25, i1 %26, i1 false
  br i1 %27, label %30, label %28

28:                                               ; preds = %23
  %29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__._dpu_core_perf_calc_crtc, i32 noundef 115) #7
  br label %159

30:                                               ; preds = %23
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %24, i8 0, i32 24, i1 false) #8
  %31 = getelementptr inbounds %struct.dpu_kms, ptr %13, i32 0, i32 11, i32 6
  %32 = load i32, ptr %31, align 8
  switch i32 %32, label %43 [
    i32 1, label %33
    i32 2, label %34
  ]

33:                                               ; preds = %30
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %24, i8 0, i64 24, i1 false) #8
  br label %153

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.dpu_kms, ptr %13, i32 0, i32 11, i32 10
  %36 = load i64, ptr %35, align 8
  %37 = getelementptr inbounds %struct.dpu_crtc_state, ptr %1, i32 0, i32 5, i32 1
  store i64 %36, ptr %37, align 8
  %38 = getelementptr inbounds %struct.dpu_kms, ptr %13, i32 0, i32 11, i32 9
  %39 = load i64, ptr %38, align 8
  store i64 %39, ptr %24, align 8
  %40 = getelementptr inbounds %struct.dpu_kms, ptr %13, i32 0, i32 11, i32 8
  %41 = load i64, ptr %40, align 8
  %42 = getelementptr inbounds %struct.dpu_crtc_state, ptr %1, i32 0, i32 5, i32 2
  store i64 %41, ptr %42, align 8
  br label %153

43:                                               ; preds = %30
  %44 = load ptr, ptr %0, align 8
  %45 = getelementptr inbounds %struct.drm_device, ptr %44, i32 0, i32 30, i32 18
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, %45
  br i1 %47, label %72, label %48

48:                                               ; preds = %43
  %49 = load ptr, ptr %20, align 4
  %50 = getelementptr inbounds %struct.drm_crtc_state, ptr %49, i32 0, i32 4
  %51 = load i32, ptr %50, align 4
  br label %52

52:                                               ; preds = %68, %48
  %53 = phi ptr [ %46, %48 ], [ %70, %68 ]
  %54 = phi i64 [ 0, %48 ], [ %69, %68 ]
  %55 = getelementptr i8, ptr %53, i32 408
  %56 = load i32, ptr %55, align 4
  %57 = shl nuw i32 1, %56
  %58 = and i32 %57, %51
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %68, label %60

60:                                               ; preds = %52
  %61 = getelementptr i8, ptr %53, i32 416
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %68, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.dpu_plane_state, ptr %62, i32 0, i32 7
  %66 = load i64, ptr %65, align 8
  %67 = add i64 %66, %54
  br label %68

68:                                               ; preds = %64, %60, %52
  %69 = phi i64 [ %67, %64 ], [ %54, %60 ], [ %54, %52 ]
  %70 = load ptr, ptr %53, align 4
  %71 = icmp eq ptr %70, %45
  br i1 %71, label %72, label %52

72:                                               ; preds = %68, %43
  %73 = phi i64 [ 0, %43 ], [ %69, %68 ]
  %74 = load ptr, ptr %14, align 8
  %75 = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %74, i32 0, i32 23, i32 15
  %76 = load i32, ptr %75, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %87, label %78

78:                                               ; preds = %72
  %79 = zext i32 %76 to i64
  %80 = mul i64 %73, %79
  %81 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %80, i32 0) #9, !srcloc !8
  %82 = extractvalue { i64, i32 } %81, 0
  %83 = extractvalue { i64, i32 } %81, 1
  %84 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %80, i64 %82, i32 %83) #9, !srcloc !9
  %85 = extractvalue { i64, i32 } %84, 0
  %86 = lshr i64 %85, 6
  br label %87

87:                                               ; preds = %78, %72
  %88 = phi i64 [ %86, %78 ], [ %73, %72 ]
  %89 = getelementptr inbounds %struct.dpu_crtc_state, ptr %1, i32 0, i32 5, i32 1
  store i64 %88, ptr %89, align 8
  %90 = load ptr, ptr %14, align 8
  %91 = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %90, i32 0, i32 23, i32 4
  %92 = load i32, ptr %91, align 4
  %93 = zext i32 %92 to i64
  store i64 %93, ptr %24, align 8
  %94 = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7
  %95 = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7, i32 9
  %96 = load i16, ptr %95, align 4
  %97 = zext i16 %96 to i32
  %98 = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7, i32 1
  %99 = load i16, ptr %98, align 4
  %100 = zext i16 %99 to i32
  %101 = mul nuw i32 %100, %97
  %102 = tail call i32 @drm_mode_vrefresh(ptr noundef %94) #8
  %103 = mul i32 %101, %102
  %104 = sext i32 %103 to i64
  %105 = load ptr, ptr %0, align 8
  %106 = getelementptr inbounds %struct.drm_device, ptr %105, i32 0, i32 30, i32 18
  %107 = load ptr, ptr %106, align 4
  %108 = icmp eq ptr %107, %106
  br i1 %108, label %133, label %109

109:                                              ; preds = %87
  %110 = load ptr, ptr %20, align 4
  %111 = getelementptr inbounds %struct.drm_crtc_state, ptr %110, i32 0, i32 4
  %112 = load i32, ptr %111, align 4
  br label %113

113:                                              ; preds = %129, %109
  %114 = phi ptr [ %107, %109 ], [ %131, %129 ]
  %115 = phi i64 [ %104, %109 ], [ %130, %129 ]
  %116 = getelementptr i8, ptr %114, i32 408
  %117 = load i32, ptr %116, align 4
  %118 = shl nuw i32 1, %117
  %119 = and i32 %118, %112
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %129, label %121

121:                                              ; preds = %113
  %122 = getelementptr i8, ptr %114, i32 416
  %123 = load ptr, ptr %122, align 4
  %124 = icmp eq ptr %123, null
  br i1 %124, label %129, label %125

125:                                              ; preds = %121
  %126 = getelementptr inbounds %struct.dpu_plane_state, ptr %123, i32 0, i32 8
  %127 = load i64, ptr %126, align 8
  %128 = tail call i64 @llvm.umax.i64(i64 %127, i64 %115) #8
  br label %129

129:                                              ; preds = %125, %121, %113
  %130 = phi i64 [ %128, %125 ], [ %115, %121 ], [ %115, %113 ]
  %131 = load ptr, ptr %114, align 4
  %132 = icmp eq ptr %131, %106
  br i1 %132, label %133, label %113

133:                                              ; preds = %129, %87
  %134 = phi i64 [ %104, %87 ], [ %130, %129 ]
  %135 = load ptr, ptr %14, align 8
  %136 = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %135, i32 0, i32 23, i32 14
  %137 = load i32, ptr %136, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %148, label %139

139:                                              ; preds = %133
  %140 = zext i32 %137 to i64
  %141 = mul i64 %134, %140
  %142 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %141, i32 0) #9, !srcloc !8
  %143 = extractvalue { i64, i32 } %142, 0
  %144 = extractvalue { i64, i32 } %142, 1
  %145 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %141, i64 %143, i32 %144) #9, !srcloc !9
  %146 = extractvalue { i64, i32 } %145, 0
  %147 = lshr i64 %146, 6
  br label %148

148:                                              ; preds = %139, %133
  %149 = phi i64 [ %147, %139 ], [ %134, %133 ]
  %150 = getelementptr inbounds %struct.dpu_crtc_state, ptr %1, i32 0, i32 5, i32 2
  store i64 %149, ptr %150, align 8
  %151 = load i64, ptr %24, align 8
  %152 = load i64, ptr %89, align 8
  br label %153

153:                                              ; preds = %148, %34, %33
  %154 = phi i64 [ %36, %34 ], [ %152, %148 ], [ 0, %33 ]
  %155 = phi i64 [ %39, %34 ], [ %151, %148 ], [ 0, %33 ]
  %156 = phi i64 [ %41, %34 ], [ %149, %148 ], [ 0, %33 ]
  %157 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 5
  %158 = load i32, ptr %157, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.29, i32 noundef %158, i64 noundef %156, i64 noundef %155, i64 noundef %154) #8
  br label %159

159:                                              ; preds = %153, %28
  %160 = load ptr, ptr %20, align 4
  %161 = icmp eq ptr %160, null
  %162 = zext i1 %161 to i32
  %163 = load ptr, ptr %0, align 8
  %164 = getelementptr inbounds %struct.drm_device, ptr %163, i32 0, i32 30, i32 20
  %165 = load ptr, ptr %164, align 4
  %166 = getelementptr inbounds %struct.drm_device, ptr %163, i32 0, i32 30, i32 20
  %167 = icmp eq ptr %165, %166
  br i1 %167, label %228, label %168

168:                                              ; preds = %159
  %169 = getelementptr inbounds %struct.dpu_crtc_state, ptr %1, i32 0, i32 5, i32 1
  %170 = load i64, ptr %169, align 8
  br label %171

171:                                              ; preds = %220, %168
  %172 = phi ptr [ %165, %168 ], [ %222, %220 ]
  %173 = phi i64 [ %170, %168 ], [ %203, %220 ]
  %174 = getelementptr i8, ptr %172, i32 -8
  %175 = getelementptr i8, ptr %172, i32 84
  %176 = load i8, ptr %175, align 4, !range !10
  %177 = icmp eq i8 %176, 0
  br i1 %177, label %202, label %178

178:                                              ; preds = %171
  %179 = icmp eq ptr %174, null
  br i1 %179, label %185, label %180

180:                                              ; preds = %178
  %181 = getelementptr i8, ptr %172, i32 636
  %182 = load ptr, ptr %181, align 4
  %183 = icmp eq ptr %182, null
  %184 = zext i1 %183 to i32
  br label %185

185:                                              ; preds = %180, %178
  %186 = phi i32 [ 1, %178 ], [ %184, %180 ]
  %187 = icmp ne i32 %186, %162
  %188 = icmp eq ptr %174, %0
  %189 = select i1 %187, i1 true, i1 %188
  br i1 %189, label %202, label %190

190:                                              ; preds = %185
  %191 = getelementptr i8, ptr %172, i32 636
  %192 = load ptr, ptr %191, align 4
  %193 = getelementptr i8, ptr %172, i32 44
  %194 = load i32, ptr %193, align 4
  %195 = getelementptr inbounds %struct.dpu_crtc_state, ptr %192, i32 0, i32 5, i32 1
  %196 = load i64, ptr %195, align 8
  %197 = getelementptr inbounds %struct.dpu_crtc_state, ptr %192, i32 0, i32 1
  %198 = load i8, ptr %197, align 4, !range !10
  %199 = zext i8 %198 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.2, i32 noundef %194, i64 noundef %196, i32 noundef %199) #8
  %200 = load i64, ptr %195, align 8
  %201 = add i64 %200, %173
  br label %202

202:                                              ; preds = %190, %185, %171
  %203 = phi i64 [ %201, %190 ], [ %173, %185 ], [ %173, %171 ]
  %204 = add i64 %203, 999
  %205 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %204, i32 0) #9, !srcloc !8
  %206 = extractvalue { i64, i32 } %205, 0
  %207 = extractvalue { i64, i32 } %205, 1
  %208 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %204, i64 %206, i32 %207) #9, !srcloc !9
  %209 = extractvalue { i64, i32 } %208, 0
  %210 = lshr i64 %209, 9
  %211 = trunc i64 %210 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.3, i32 noundef %211) #8
  %212 = load ptr, ptr %14, align 8
  %213 = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %212, i32 0, i32 23, i32 1
  %214 = load i32, ptr %213, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.4, i32 noundef %214) #8
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %218

216:                                              ; preds = %202
  %217 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.dpu_core_perf_crtc_check, i32 noundef 197) #7
  br label %228

218:                                              ; preds = %202
  %219 = icmp ult i32 %214, %211
  br i1 %219, label %225, label %220

220:                                              ; preds = %218
  %221 = load ptr, ptr %0, align 8
  %222 = load ptr, ptr %172, align 4
  %223 = getelementptr inbounds %struct.drm_device, ptr %221, i32 0, i32 30, i32 20
  %224 = icmp eq ptr %222, %223
  br i1 %224, label %228, label %171

225:                                              ; preds = %218
  %226 = trunc i64 %210 to i32
  %227 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dpu_core_perf_crtc_check, i32 noundef 201, i32 noundef %226, i32 noundef %214) #7
  br label %228

228:                                              ; preds = %225, %220, %216, %159, %19, %17, %6
  %229 = phi i32 [ -7, %225 ], [ -7, %216 ], [ 0, %17 ], [ -22, %6 ], [ 0, %19 ], [ 0, %159 ], [ 0, %220 ]
  ret i32 %229
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dpu_core_perf_crtc_release_bw(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dpu_core_perf_crtc_release_bw, i32 noundef 263) #7
  br label %47

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8
  %7 = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.msm_drm_private, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.dpu_kms, ptr %10, i32 0, i32 3
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %5
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.dpu_core_perf_crtc_release_bw, i32 noundef 269) #7
  br label %47

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.dpu_kms, ptr %10, i32 0, i32 22
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %17) #8, !srcloc !12
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %17, ptr %17, i32 1, ptr elementtype(i32) %17) #8, !srcloc !13
  %19 = extractvalue { i32, i32 } %18, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !14
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %47, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.dpu_kms, ptr %10, i32 0, i32 11, i32 7
  %23 = load i32, ptr %22, align 8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %47, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 5
  %27 = load i32, ptr %26, align 4
  %28 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_cmd_release_bw, i32 0, i32 1), align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %25
  %31 = tail call ptr @llvm.thread.pointer() #8
  %32 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 2
  %33 = load i32, ptr %32, align 8
  %34 = lshr i32 %33, 5
  %35 = getelementptr i32, ptr @__cpu_online_mask, i32 %34
  %36 = load volatile i32, ptr %35, align 4
  %37 = and i32 %33, 31
  %38 = shl nuw i32 1, %37
  %39 = and i32 %38, %36
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %30
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !15
  %42 = tail call i32 @__traceiter_dpu_cmd_release_bw(ptr noundef null, i32 noundef %27) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  %43 = load i32, ptr %26, align 4
  br label %44

44:                                               ; preds = %41, %30, %25
  %45 = phi i32 [ %27, %25 ], [ %27, %30 ], [ %43, %41 ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.8, i32 noundef %45) #8
  %46 = getelementptr inbounds %struct.dpu_crtc, ptr %0, i32 0, i32 19, i32 1
  store i64 0, ptr %46, align 8
  tail call fastcc void @_dpu_core_perf_crtc_update_bus(ptr noundef %10, ptr noundef nonnull %0)
  br label %47

47:                                               ; preds = %44, %21, %16, %14, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @_dpu_core_perf_crtc_update_bus(ptr nocapture noundef readonly %0, ptr noundef readonly %1) unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.drm_crtc, ptr %1, i32 0, i32 22
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %4, %2
  %10 = phi i32 [ 1, %2 ], [ %8, %4 ]
  %11 = load ptr, ptr %1, align 8
  %12 = getelementptr inbounds %struct.drm_device, ptr %11, i32 0, i32 30, i32 20
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %12
  br i1 %14, label %58, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.dpu_kms, ptr %0, i32 0, i32 24
  br label %17

17:                                               ; preds = %49, %15
  %18 = phi ptr [ %11, %15 ], [ %50, %49 ]
  %19 = phi ptr [ %13, %15 ], [ %53, %49 ]
  %20 = phi i64 [ 0, %15 ], [ %52, %49 ]
  %21 = phi i64 [ 0, %15 ], [ %51, %49 ]
  %22 = getelementptr i8, ptr %19, i32 84
  %23 = load i8, ptr %22, align 4, !range !10
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %49, label %25

25:                                               ; preds = %17
  %26 = getelementptr i8, ptr %19, i32 -8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %25
  %29 = getelementptr i8, ptr %19, i32 636
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  %32 = zext i1 %31 to i32
  br label %33

33:                                               ; preds = %28, %25
  %34 = phi i32 [ 1, %25 ], [ %32, %28 ]
  %35 = icmp eq i32 %10, %34
  br i1 %35, label %36, label %49

36:                                               ; preds = %33
  %37 = getelementptr i8, ptr %19, i32 636
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.dpu_crtc_state, ptr %38, i32 0, i32 5
  %40 = load i64, ptr %39, align 8
  %41 = tail call i64 @llvm.umax.i64(i64 %20, i64 %40)
  %42 = getelementptr inbounds %struct.dpu_crtc_state, ptr %38, i32 0, i32 5, i32 1
  %43 = load i64, ptr %42, align 8
  %44 = add i64 %43, %21
  %45 = getelementptr i8, ptr %19, i32 44
  %46 = load i32, ptr %45, align 4
  %47 = load i32, ptr %16, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.31, i32 noundef %46, i64 noundef %43, i32 noundef %47) #8
  %48 = load ptr, ptr %1, align 8
  br label %49

49:                                               ; preds = %36, %33, %17
  %50 = phi ptr [ %48, %36 ], [ %18, %33 ], [ %18, %17 ]
  %51 = phi i64 [ %44, %36 ], [ %21, %33 ], [ %21, %17 ]
  %52 = phi i64 [ %41, %36 ], [ %20, %33 ], [ %20, %17 ]
  %53 = load ptr, ptr %19, align 4
  %54 = getelementptr inbounds %struct.drm_device, ptr %50, i32 0, i32 30, i32 20
  %55 = icmp eq ptr %53, %54
  br i1 %55, label %56, label %17

56:                                               ; preds = %49
  %57 = trunc i64 %52 to i32
  br label %58

58:                                               ; preds = %56, %9
  %59 = phi i64 [ 0, %9 ], [ %51, %56 ]
  %60 = phi i32 [ 0, %9 ], [ %57, %56 ]
  %61 = getelementptr inbounds %struct.dpu_kms, ptr %0, i32 0, i32 24
  %62 = load i32, ptr %61, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %84, label %64

64:                                               ; preds = %58
  %65 = mul i32 %62, 1000
  %66 = icmp ult i64 %59, 4294967296
  br i1 %66, label %67, label %70, !prof !17

67:                                               ; preds = %64
  %68 = trunc i64 %59 to i32
  %69 = udiv i32 %68, %65
  br label %74

70:                                               ; preds = %64
  %71 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %65, i64 %59) #9, !srcloc !18
  %72 = extractvalue { i64, i64 } %71, 1
  %73 = trunc i64 %72 to i32
  br label %74

74:                                               ; preds = %70, %67
  %75 = phi i32 [ %69, %67 ], [ %73, %70 ]
  br label %76

76:                                               ; preds = %76, %74
  %77 = phi i32 [ 0, %74 ], [ %81, %76 ]
  %78 = getelementptr %struct.dpu_kms, ptr %0, i32 0, i32 23, i32 %77
  %79 = load ptr, ptr %78, align 4
  %80 = tail call i32 @icc_set_bw(ptr noundef %79, i32 noundef %75, i32 noundef %60) #8
  %81 = add nuw i32 %77, 1
  %82 = load i32, ptr %61, align 4
  %83 = icmp ult i32 %81, %82
  br i1 %83, label %76, label %84

84:                                               ; preds = %76, %58
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dpu_core_perf_crtc_update(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dpu_core_perf_crtc_update, i32 noundef 334) #7
  br label %188

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 8
  %9 = getelementptr inbounds %struct.drm_device, ptr %8, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.msm_drm_private, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.dpu_kms, ptr %12, i32 0, i32 3
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %7
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.dpu_core_perf_crtc_update, i32 noundef 340) #7
  br label %188

18:                                               ; preds = %7
  %19 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 22
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = zext i1 %2 to i32
  %24 = getelementptr inbounds %struct.dpu_kms, ptr %12, i32 0, i32 11, i32 4
  %25 = load i64, ptr %24, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.9, i32 noundef %22, i32 noundef %23, i64 noundef %25) #8
  %26 = getelementptr inbounds %struct.dpu_crtc, ptr %0, i32 0, i32 19
  %27 = getelementptr inbounds %struct.dpu_crtc_state, ptr %20, i32 0, i32 5
  %28 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 11
  %29 = load i8, ptr %28, align 4, !range !10
  %30 = icmp eq i8 %29, 0
  %31 = or i1 %30, %2
  br i1 %31, label %76, label %32

32:                                               ; preds = %18
  %33 = icmp eq i32 %1, 0
  %34 = getelementptr inbounds %struct.dpu_crtc_state, ptr %20, i32 0, i32 5, i32 1
  %35 = load i64, ptr %34, align 8
  %36 = getelementptr inbounds %struct.dpu_crtc, ptr %0, i32 0, i32 19, i32 1
  %37 = load i64, ptr %36, align 8
  br i1 %33, label %44, label %38

38:                                               ; preds = %32
  %39 = icmp ugt i64 %35, %37
  br i1 %39, label %50, label %40

40:                                               ; preds = %38
  %41 = load i64, ptr %27, align 8
  %42 = load i64, ptr %26, align 8
  %43 = icmp ugt i64 %41, %42
  br i1 %43, label %50, label %54

44:                                               ; preds = %32
  %45 = icmp ult i64 %35, %37
  br i1 %45, label %61, label %46

46:                                               ; preds = %44
  %47 = load i64, ptr %27, align 8
  %48 = load i64, ptr %26, align 8
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %61, label %65

50:                                               ; preds = %40, %38
  %51 = load i32, ptr %21, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.10, i32 noundef %51, i32 noundef %1, i64 noundef %35, i64 noundef %37) #8
  %52 = load i64, ptr %34, align 8
  store i64 %52, ptr %36, align 8
  %53 = load i64, ptr %27, align 8
  store i64 %53, ptr %26, align 8
  br label %54

54:                                               ; preds = %50, %40
  %55 = phi i1 [ false, %40 ], [ true, %50 ]
  %56 = getelementptr inbounds %struct.dpu_crtc_state, ptr %20, i32 0, i32 5, i32 2
  %57 = load i64, ptr %56, align 8
  %58 = getelementptr inbounds %struct.dpu_crtc, ptr %0, i32 0, i32 19, i32 2
  %59 = load i64, ptr %58, align 8
  %60 = icmp ugt i64 %57, %59
  br i1 %60, label %72, label %78

61:                                               ; preds = %46, %44
  %62 = load i32, ptr %21, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.10, i32 noundef %62, i32 noundef 0, i64 noundef %35, i64 noundef %37) #8
  %63 = load i64, ptr %34, align 8
  store i64 %63, ptr %36, align 8
  %64 = load i64, ptr %27, align 8
  store i64 %64, ptr %26, align 8
  br label %65

65:                                               ; preds = %61, %46
  %66 = phi i1 [ false, %46 ], [ true, %61 ]
  %67 = getelementptr inbounds %struct.dpu_crtc_state, ptr %20, i32 0, i32 5, i32 2
  %68 = load i64, ptr %67, align 8
  %69 = getelementptr inbounds %struct.dpu_crtc, ptr %0, i32 0, i32 19, i32 2
  %70 = load i64, ptr %69, align 8
  %71 = icmp ult i64 %68, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %65, %54
  %73 = phi i64 [ %68, %65 ], [ %57, %54 ]
  %74 = phi i1 [ %66, %65 ], [ %55, %54 ]
  %75 = getelementptr inbounds %struct.dpu_crtc, ptr %0, i32 0, i32 19, i32 2
  store i64 %73, ptr %75, align 8
  br label %78

76:                                               ; preds = %18
  %77 = load i32, ptr %21, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.11, i32 noundef %77) #8
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(24) %26, i8 0, i32 24, i1 false)
  br label %78

78:                                               ; preds = %76, %72, %65, %54
  %79 = phi i1 [ true, %76 ], [ true, %72 ], [ false, %65 ], [ false, %54 ]
  %80 = phi i1 [ true, %76 ], [ %74, %72 ], [ %66, %65 ], [ %55, %54 ]
  %81 = load i32, ptr %21, align 4
  %82 = getelementptr inbounds %struct.dpu_crtc_state, ptr %20, i32 0, i32 5, i32 1
  %83 = load i64, ptr %82, align 8
  %84 = getelementptr inbounds %struct.dpu_crtc_state, ptr %20, i32 0, i32 5, i32 2
  %85 = load i64, ptr %84, align 8
  %86 = trunc i64 %85 to i32
  %87 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_perf_crtc_update, i32 0, i32 1), align 4
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %102

89:                                               ; preds = %78
  %90 = tail call ptr @llvm.thread.pointer() #8
  %91 = getelementptr inbounds %struct.thread_info, ptr %90, i32 0, i32 2
  %92 = load i32, ptr %91, align 8
  %93 = lshr i32 %92, 5
  %94 = getelementptr i32, ptr @__cpu_online_mask, i32 %93
  %95 = load volatile i32, ptr %94, align 4
  %96 = and i32 %92, 31
  %97 = shl nuw i32 1, %96
  %98 = and i32 %97, %95
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %89
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !19
  %101 = tail call i32 @__traceiter_dpu_perf_crtc_update(ptr noundef null, i32 noundef %81, i64 noundef %83, i32 noundef %86, i1 noundef zeroext %2, i1 noundef zeroext %80, i1 noundef zeroext %79) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !20
  br label %102

102:                                              ; preds = %100, %89, %78
  br i1 %80, label %103, label %104

103:                                              ; preds = %102
  tail call fastcc void @_dpu_core_perf_crtc_update_bus(ptr noundef %12, ptr noundef nonnull %0)
  br label %104

104:                                              ; preds = %103, %102
  br i1 %79, label %105, label %188

105:                                              ; preds = %104
  %106 = getelementptr inbounds %struct.dpu_kms, ptr %12, i32 0, i32 11, i32 6
  %107 = getelementptr inbounds %struct.dpu_kms, ptr %12, i32 0, i32 11, i32 6, i32 1
  %108 = load i64, ptr %107, align 8
  %109 = getelementptr inbounds %struct.dpu_kms, ptr %12, i32 0, i32 1
  %110 = load ptr, ptr %109, align 8
  %111 = getelementptr inbounds %struct.drm_device, ptr %110, i32 0, i32 30, i32 20
  %112 = load ptr, ptr %111, align 4
  %113 = icmp eq ptr %112, %111
  br i1 %113, label %141, label %114

114:                                              ; preds = %105
  %115 = getelementptr inbounds %struct.dpu_kms, ptr %12, i32 0, i32 11, i32 3
  br label %116

116:                                              ; preds = %135, %114
  %117 = phi ptr [ %110, %114 ], [ %136, %135 ]
  %118 = phi ptr [ %112, %114 ], [ %138, %135 ]
  %119 = phi i64 [ %108, %114 ], [ %137, %135 ]
  %120 = getelementptr i8, ptr %118, i32 84
  %121 = load i8, ptr %120, align 4, !range !10
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %135, label %123

123:                                              ; preds = %116
  %124 = getelementptr i8, ptr %118, i32 636
  %125 = load ptr, ptr %124, align 4
  %126 = getelementptr inbounds %struct.dpu_crtc_state, ptr %125, i32 0, i32 5, i32 2
  %127 = load i64, ptr %126, align 8
  %128 = tail call i64 @llvm.umax.i64(i64 %127, i64 %119) #8
  %129 = load ptr, ptr %115, align 4
  %130 = load ptr, ptr %129, align 4
  %131 = trunc i64 %128 to i32
  %132 = tail call i32 @clk_round_rate(ptr noundef %130, i32 noundef %131) #8
  %133 = sext i32 %132 to i64
  %134 = load ptr, ptr %109, align 8
  br label %135

135:                                              ; preds = %123, %116
  %136 = phi ptr [ %134, %123 ], [ %117, %116 ]
  %137 = phi i64 [ %133, %123 ], [ %119, %116 ]
  %138 = load ptr, ptr %118, align 4
  %139 = getelementptr inbounds %struct.drm_device, ptr %136, i32 0, i32 30, i32 20
  %140 = icmp eq ptr %138, %139
  br i1 %140, label %141, label %116

141:                                              ; preds = %135, %105
  %142 = phi i64 [ %108, %105 ], [ %137, %135 ]
  %143 = load i32, ptr %106, align 8
  %144 = icmp eq i32 %143, 2
  br i1 %144, label %145, label %148

145:                                              ; preds = %141
  %146 = getelementptr inbounds %struct.dpu_kms, ptr %12, i32 0, i32 11, i32 8
  %147 = load i64, ptr %146, align 8
  br label %148

148:                                              ; preds = %145, %141
  %149 = phi i64 [ %147, %145 ], [ %142, %141 ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.32, i64 noundef %149) #8
  %150 = load ptr, ptr %109, align 8
  %151 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_core_perf_update_clk, i32 0, i32 1), align 4
  %152 = icmp sgt i32 %151, 0
  br i1 %152, label %153, label %166

153:                                              ; preds = %148
  %154 = tail call ptr @llvm.thread.pointer() #8
  %155 = getelementptr inbounds %struct.thread_info, ptr %154, i32 0, i32 2
  %156 = load i32, ptr %155, align 8
  %157 = lshr i32 %156, 5
  %158 = getelementptr i32, ptr @__cpu_online_mask, i32 %157
  %159 = load volatile i32, ptr %158, align 4
  %160 = and i32 %156, 31
  %161 = shl nuw i32 1, %160
  %162 = and i32 %161, %159
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %166, label %164

164:                                              ; preds = %153
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !21
  %165 = tail call i32 @__traceiter_dpu_core_perf_update_clk(ptr noundef null, ptr noundef %150, i1 noundef zeroext %2, i64 noundef %149) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !22
  br label %166

166:                                              ; preds = %164, %153, %148
  %167 = getelementptr inbounds %struct.dpu_kms, ptr %12, i32 0, i32 11, i32 3
  %168 = load ptr, ptr %167, align 4
  %169 = getelementptr inbounds %struct.dss_clk, ptr %168, i32 0, i32 4
  %170 = load i32, ptr %169, align 4
  %171 = icmp eq i32 %170, 0
  %172 = trunc i64 %149 to i32
  %173 = zext i32 %170 to i64
  %174 = icmp ugt i64 %149, %173
  %175 = select i1 %174, i32 %170, i32 %172
  %176 = select i1 %171, i32 %172, i32 %175
  %177 = getelementptr inbounds %struct.dss_clk, ptr %168, i32 0, i32 3
  store i32 %176, ptr %177, align 4
  %178 = getelementptr inbounds %struct.dpu_kms, ptr %12, i32 0, i32 19
  %179 = load ptr, ptr %178, align 8
  %180 = getelementptr inbounds %struct.platform_device, ptr %179, i32 0, i32 3
  %181 = tail call i32 @dev_pm_opp_set_rate(ptr noundef %180, i32 noundef %176) #8
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %187, label %183

183:                                              ; preds = %166
  %184 = load ptr, ptr %167, align 4
  %185 = getelementptr inbounds %struct.dss_clk, ptr %184, i32 0, i32 1
  %186 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.dpu_core_perf_crtc_update, i32 noundef 411, ptr noundef %185, i64 noundef %149) #7
  br label %188

187:                                              ; preds = %166
  store i64 %149, ptr %24, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.14, i64 noundef %149) #8
  br label %188

188:                                              ; preds = %187, %183, %104, %16, %5
  %189 = phi i32 [ %181, %183 ], [ -22, %16 ], [ -22, %5 ], [ 0, %187 ], [ 0, %104 ]
  ret i32 %189
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dpu_core_perf_debugfs_init(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.dpu_kms, ptr %0, i32 0, i32 11
  %4 = getelementptr inbounds %struct.dpu_kms, ptr %0, i32 0, i32 11, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.15, ptr noundef %1) #8
  %7 = getelementptr inbounds %struct.dpu_kms, ptr %0, i32 0, i32 11, i32 5
  tail call void @debugfs_create_u64(ptr noundef nonnull @.str.16, i16 noundef zeroext 384, ptr noundef %6, ptr noundef %7) #8
  %8 = getelementptr inbounds %struct.dpu_kms, ptr %0, i32 0, i32 11, i32 4
  tail call void @debugfs_create_u64(ptr noundef nonnull @.str.17, i16 noundef zeroext 384, ptr noundef %6, ptr noundef %8) #8
  %9 = getelementptr inbounds %struct.dpu_kms, ptr %0, i32 0, i32 11, i32 7
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.18, i16 noundef zeroext 384, ptr noundef %6, ptr noundef %9) #8
  %10 = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %5, i32 0, i32 23
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.19, i16 noundef zeroext 384, ptr noundef %6, ptr noundef %10) #8
  %11 = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %5, i32 0, i32 23, i32 1
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.20, i16 noundef zeroext 384, ptr noundef %6, ptr noundef %11) #8
  %12 = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %5, i32 0, i32 23, i32 2
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.21, i16 noundef zeroext 384, ptr noundef %6, ptr noundef %12) #8
  %13 = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %5, i32 0, i32 23, i32 3
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.22, i16 noundef zeroext 384, ptr noundef %6, ptr noundef %13) #8
  %14 = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %5, i32 0, i32 23, i32 4
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.23, i16 noundef zeroext 384, ptr noundef %6, ptr noundef %14) #8
  %15 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.24, i16 noundef zeroext 384, ptr noundef %6, ptr noundef %3, ptr noundef nonnull @dpu_core_perf_mode_fops) #8
  %16 = getelementptr inbounds %struct.dpu_kms, ptr %0, i32 0, i32 11, i32 8
  tail call void @debugfs_create_u64(ptr noundef nonnull @.str.25, i16 noundef zeroext 384, ptr noundef %6, ptr noundef %16) #8
  %17 = getelementptr inbounds %struct.dpu_kms, ptr %0, i32 0, i32 11, i32 9
  tail call void @debugfs_create_u64(ptr noundef nonnull @.str.26, i16 noundef zeroext 384, ptr noundef %6, ptr noundef %17) #8
  %18 = getelementptr inbounds %struct.dpu_kms, ptr %0, i32 0, i32 11, i32 10
  tail call void @debugfs_create_u64(ptr noundef nonnull @.str.27, i16 noundef zeroext 384, ptr noundef %6, ptr noundef %18) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_u64(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_u32(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dpu_core_perf_destroy(ptr noundef writeonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.dpu_core_perf_destroy, i32 noundef 519) #7
  br label %9

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.dpu_core_perf, ptr %0, i32 0, i32 5
  store i64 0, ptr %6, align 8
  %7 = getelementptr inbounds %struct.dpu_core_perf, ptr %0, i32 0, i32 3
  store ptr null, ptr %7, align 4
  %8 = getelementptr inbounds %struct.dpu_core_perf, ptr %0, i32 0, i32 2
  store ptr null, ptr %8, align 8
  store ptr null, ptr %0, align 8
  br label %9

9:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dpu_core_perf_init(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  store ptr %1, ptr %0, align 8
  %5 = getelementptr inbounds %struct.dpu_core_perf, ptr %0, i32 0, i32 2
  store ptr %2, ptr %5, align 8
  %6 = getelementptr inbounds %struct.dpu_core_perf, ptr %0, i32 0, i32 3
  store ptr %3, ptr %6, align 4
  %7 = getelementptr inbounds %struct.dss_clk, ptr %3, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds %struct.dpu_core_perf, ptr %0, i32 0, i32 5
  store i64 %9, ptr %10, align 8
  %11 = icmp eq i32 %8, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %4
  %13 = load i32, ptr @__drm_debug, align 4
  %14 = and i32 %13, 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.28) #8
  br label %17

17:                                               ; preds = %16, %12
  store i64 412500000, ptr %10, align 8
  br label %18

18:                                               ; preds = %17, %4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_vrefresh(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_cmd_release_bw(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @icc_set_bw(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_perf_crtc_update(ptr noundef, i32 noundef, i64 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_core_perf_update_clk(ptr noundef, ptr noundef, i1 noundef zeroext, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @_dpu_core_perf_mode_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca [128 x i8], align 1
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(128) %5, i8 0, i32 128, i1 false), !annotation !23
  %8 = getelementptr inbounds %struct.dpu_core_perf, ptr %7, i32 0, i32 6
  %9 = load i32, ptr %8, align 8
  %10 = getelementptr inbounds %struct.dpu_core_perf, ptr %7, i32 0, i32 6, i32 1
  %11 = load i64, ptr %10, align 8
  %12 = getelementptr inbounds %struct.dpu_core_perf, ptr %7, i32 0, i32 6, i32 2
  %13 = load i64, ptr %12, align 8
  %14 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %5, i32 noundef 128, ptr noundef nonnull @.str.33, i32 noundef %9, i64 noundef %11, i64 noundef %13) #8
  %15 = call i32 @simple_read_from_buffer(ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %5, i32 noundef %14) #8
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #8
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @_dpu_core_perf_mode_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.dpu_core_perf, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4
  %10 = call i32 @kstrtouint_from_user(ptr noundef %1, i32 noundef %2, i32 noundef 0, ptr noundef nonnull %5) #8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %32

12:                                               ; preds = %4
  %13 = load i32, ptr %5, align 4
  %14 = icmp ugt i32 %13, 2
  br i1 %14, label %32, label %15

15:                                               ; preds = %12
  switch i32 %13, label %25 [
    i32 2, label %27
    i32 1, label %16
  ]

16:                                               ; preds = %15
  %17 = getelementptr inbounds %struct.dpu_core_perf, ptr %7, i32 0, i32 5
  %18 = load i64, ptr %17, align 8
  %19 = getelementptr inbounds %struct.dpu_core_perf, ptr %7, i32 0, i32 6, i32 1
  store i64 %18, ptr %19, align 8
  %20 = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %9, i32 0, i32 23, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = zext i32 %21 to i64
  %23 = mul nuw nsw i64 %22, 1000
  %24 = getelementptr inbounds %struct.dpu_core_perf, ptr %7, i32 0, i32 6, i32 2
  store i64 %23, ptr %24, align 8
  br label %27

25:                                               ; preds = %15
  %26 = getelementptr inbounds %struct.dpu_core_perf, ptr %7, i32 0, i32 6, i32 1
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %26, i8 0, i64 16, i1 false)
  br label %27

27:                                               ; preds = %25, %16, %15
  %28 = phi ptr [ @.str.35, %16 ], [ @.str.36, %25 ], [ @.str.34, %15 ]
  %29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %28) #7
  %30 = load i32, ptr %5, align 4
  %31 = getelementptr inbounds %struct.dpu_core_perf, ptr %7, i32 0, i32 6
  store i32 %30, ptr %31, align 8
  br label %32

32:                                               ; preds = %27, %12, %4
  %33 = phi i32 [ %2, %27 ], [ %10, %4 ], [ -22, %12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint_from_user(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind }
attributes #9 = { nounwind readnone }

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
!8 = !{i64 716160, i64 716187, i64 716209, i64 716237}
!9 = !{i64 716568, i64 716595, i64 716628, i64 716649, i64 716676, i64 716702}
!10 = !{i8 0, i8 2}
!11 = !{i64 2148452986}
!12 = !{i64 850921, i64 2148340892, i64 2148340918, i64 2148340965, i64 2148340987, i64 2148341015, i64 2148341035}
!13 = !{i64 2148355348, i64 2148355380, i64 2148355409, i64 2148355443, i64 2148355474, i64 2148355497}
!14 = !{i64 2148453189}
!15 = !{i64 2155870314}
!16 = !{i64 2155870476}
!17 = !{!"branch_weights", i32 2000, i32 1}
!18 = !{i64 2148201704, i64 2148201984, i64 2148202318, i64 2148202652}
!19 = !{i64 2155915291}
!20 = !{i64 2155915565}
!21 = !{i64 2156743439}
!22 = !{i64 2156743645}
!23 = !{!"auto-init"}
