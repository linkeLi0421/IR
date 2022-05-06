; ModuleID = '/llk/IR/drivers/gpu/drm/msm/disp/dpu1/dpu_plane.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/disp/dpu1/dpu_plane.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_plane_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.dpu_csc_cfg = type { [9 x i32], [3 x i32], [3 x i32], [6 x i32], [6 x i32] }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.dpu_plane_state = type { %struct.drm_plane_state, ptr, i32, i8, i32, i32, i8, i64, i64 }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.dpu_multirect_plane_states = type { ptr, ptr }
%struct.dpu_format = type { %struct.msm_format, i32, [4 x i8], [4 x i8], i32, i8, i8, i8, i8, i8, i8, i32, [1 x i32], i16, i16 }
%struct.msm_format = type { i32 }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.dpu_plane = type { %struct.drm_plane, %struct.mutex, i32, ptr, i32, i8, i8, i8, %struct.list_head, ptr }
%struct.dpu_mdss_cfg = type { i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.dpu_reg_dma_cfg, i32, i32, ptr, %struct.dpu_perf_cfg, ptr, ptr, ptr, i32 }
%struct.dpu_reg_dma_cfg = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dpu_perf_cfg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], [3 x %struct.dpu_qos_lut_tbl], [2 x %struct.dpu_perf_cdp_cfg] }
%struct.dpu_qos_lut_tbl = type { i32, ptr }
%struct.dpu_perf_cdp_cfg = type { i8, i8 }
%struct.dpu_caps = type { i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, i32 }
%struct.dpu_hw_ctl = type { %struct.dpu_hw_blk, %struct.dpu_hw_blk_reg_map, i32, ptr, i32, ptr, i32, i32, i32, %struct.dpu_hw_ctl_ops }
%struct.dpu_hw_blk = type {}
%struct.dpu_hw_blk_reg_map = type { ptr, i32, i32, i32, i32, i32 }
%struct.dpu_hw_ctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dpu_hw_pipe = type { %struct.dpu_hw_blk, %struct.dpu_hw_blk_reg_map, ptr, ptr, i32, ptr, %struct.dpu_hw_sspp_ops }
%struct.dpu_hw_sspp_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dpu_sspp_cfg = type { [16 x i8], i32, i32, i32, i32, ptr, i32, i32, i32 }
%struct.dpu_hw_pipe_cfg = type { %struct.dpu_hw_fmt_layout, %struct.drm_rect, %struct.drm_rect, i32, i32 }
%struct.dpu_hw_fmt_layout = type { ptr, i32, i32, i32, i32, [4 x i32], [4 x i32], [4 x i32] }
%struct.dpu_hw_pipe_qos_cfg = type { i32, i32, i8, i8 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.69, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.79, ptr, i32, ptr, i8, i32 }
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
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.dpu_sspp_sub_blks = type { i32, i32, i32, i32, i32, i32, i32, %struct.dpu_src_blk, %struct.dpu_scaler_blk, %struct.dpu_pp_blk, %struct.dpu_pp_blk, %struct.dpu_pp_blk, %struct.dpu_pp_blk, %struct.dpu_pp_blk, ptr, i32, ptr, i32 }
%struct.dpu_src_blk = type { [16 x i8], i32, i32, i32 }
%struct.dpu_scaler_blk = type { [16 x i8], i32, i32, i32, i32 }
%struct.dpu_pp_blk = type { [16 x i8], i32, i32, i32, i32 }
%struct.dpu_lm_cfg = type { [16 x i8], i32, i32, i32, i32, ptr, i32, i32, i32 }
%struct.dpu_lm_sub_blks = type { i32, i32, [12 x i32], %struct.dpu_pp_blk }
%struct.dpu_hw_scaler3_cfg = type { i32, i32, [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i32, ptr, i32, %struct.dpu_hw_scaler3_de_cfg, i32 }
%struct.dpu_hw_scaler3_de_cfg = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, [3 x i16], [3 x i16], [3 x i16] }
%struct.dpu_hw_pixel_ext = type { i8, [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32] }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.76, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.76 = type { [4 x i8] }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_planes_state = type { ptr, ptr, ptr, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.dpu_vbif_set_qos_params = type { i32, i32, i32, i32, i8 }
%struct.dpu_vbif_set_ot_params = type { i32, i32, i32, i32, i32, i8, i8, i32, i32 }
%struct.dpu_hw_pipe_cdp_cfg = type { i8, i8, i8, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.dpu_qos_lut_entry = type { i32, i64 }

@.str = private unnamed_addr constant [65 x i8] c"\013[drm:%s:%d] [dpu error]DPU plane state of plane id %d is NULL\0A\00", align 1
@__func__.dpu_plane_validate_multirect_v2 = private unnamed_addr constant [32 x i8] c"dpu_plane_validate_multirect_v2\00", align 1
@.str.1 = private unnamed_addr constant [77 x i8] c"\013[drm:%s:%d] [dpu error]plane%d scaling is not supported in multirect mode\0A\00", align 1
@.str.2 = private unnamed_addr constant [72 x i8] c"\013[drm:%s:%d] [dpu error]plane%d Unsupported format for multirect mode\0A\00", align 1
@.str.3 = private unnamed_addr constant [78 x i8] c"\013[drm:%s:%d] [dpu error]No multirect mode possible for the planes (%d - %d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"plane%d R0: %d - %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"plane%d R1: %d - %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"\013[drm:%s:%d] [dpu error]invalid plane\0A\00", align 1
@__func__.dpu_plane_flush = private unnamed_addr constant [16 x i8] c"dpu_plane_flush\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"sspp\00", align 1
@.str.8 = private unnamed_addr constant [68 x i8] c"\013[drm:%s:%d] [dpu error][%u]failed to allocate local plane struct\0A\00", align 1
@__func__.dpu_plane_init = private unnamed_addr constant [15 x i8] c"dpu_plane_init\00", align 1
@.str.9 = private unnamed_addr constant [47 x i8] c"\013[drm:%s:%d] [dpu error][%u]SSPP init failed\0A\00", align 1
@.str.10 = private unnamed_addr constant [61 x i8] c"\013[drm:%s:%d] [dpu error][%u]SSPP init returned invalid cfg\0A\00", align 1
@dpu_plane_funcs = internal constant %struct.drm_plane_funcs { ptr @drm_atomic_helper_update_plane, ptr @drm_atomic_helper_disable_plane, ptr @dpu_plane_destroy, ptr @dpu_plane_reset, ptr null, ptr @dpu_plane_duplicate_state, ptr @dpu_plane_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr @dpu_plane_atomic_print_state, ptr @dpu_plane_format_mod_supported }, align 4
@supported_format_modifiers = internal constant [3 x i64] [i64 360287970189639681, i64 0, i64 72057594037927935], align 8
@.str.11 = private unnamed_addr constant [67 x i8] c"\013[drm:%s:%d] [dpu error]failed to install zpos property, rc = %d\0A\00", align 1
@dpu_plane_helper_funcs = internal constant %struct.drm_plane_helper_funcs { ptr @dpu_plane_prepare_fb, ptr @dpu_plane_cleanup_fb, ptr @dpu_plane_atomic_check, ptr @dpu_plane_atomic_update, ptr null, ptr null, ptr null }, align 4
@dpu_plane_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"&pdpu->lock\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"%s created for pipe:%u id:%u virtual:%u\0A\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"plane%d \0A\00", align 1
@dpu_csc10_YUV2RGB_601L = internal constant %struct.dpu_csc_cfg { [9 x i32] [i32 76288, i32 0, i32 104576, i32 76288, i32 -25728, i32 -53248, i32 76288, i32 132224, i32 0], [3 x i32] [i32 65472, i32 65024, i32 65024], [3 x i32] zeroinitializer, [6 x i32] [i32 64, i32 940, i32 64, i32 960, i32 64, i32 960], [6 x i32] [i32 0, i32 1023, i32 0, i32 1023, i32 0, i32 1023] }, align 4
@dpu_csc_YUV2RGB_601L = internal constant %struct.dpu_csc_cfg { [9 x i32] [i32 76288, i32 0, i32 104576, i32 76288, i32 -25728, i32 -53248, i32 76288, i32 132224, i32 0], [3 x i32] [i32 65520, i32 65408, i32 65408], [3 x i32] zeroinitializer, [6 x i32] [i32 16, i32 235, i32 16, i32 240, i32 16, i32 240], [6 x i32] [i32 0, i32 255, i32 0, i32 255, i32 0, i32 255] }, align 4
@.str.15 = private unnamed_addr constant [33 x i8] c"plane%d using 0x%X 0x%X 0x%X...\0A\00", align 1
@.str.16 = private unnamed_addr constant [54 x i8] c"plane%d pnum:%d ds:%d vb:%d pri[0x%x, 0x%x] is_rt:%d\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@__func__.dpu_plane_reset = private unnamed_addr constant [16 x i8] c"dpu_plane_reset\00", align 1
@.str.17 = private unnamed_addr constant [59 x i8] c"\013[drm:%s:%d] [dpu error]plane%d failed to allocate state\0A\00", align 1
@__func__.dpu_plane_duplicate_state = private unnamed_addr constant [26 x i8] c"dpu_plane_duplicate_state\00", align 1
@.str.18 = private unnamed_addr constant [46 x i8] c"\013[drm:%s:%d] [dpu error]invalid plane state\0A\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"\09stage=%d\0A\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"\09sspp=%s\0A\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"\09multirect_mode=%s\0A\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"\09multirect_index=%s\0A\00", align 1
@.str.23 = private unnamed_addr constant [42 x i8] c"drivers/gpu/drm/msm/disp/dpu1/dpu_plane.c\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@multirect_mode_name = internal unnamed_addr constant [3 x ptr] [ptr @.str.25, ptr @.str.26, ptr @.str.27], align 4
@.str.25 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"parallel\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"time_mx\00", align 1
@multirect_index_name = internal unnamed_addr constant [3 x ptr] [ptr @.str.28, ptr @.str.29, ptr @.str.30], align 4
@.str.28 = private unnamed_addr constant [5 x i8] c"solo\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"rect_0\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"rect_1\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"plane%d FB[%u]\0A\00", align 1
@.str.32 = private unnamed_addr constant [56 x i8] c"\013[drm:%s:%d] [dpu error]failed to prepare framebuffer\0A\00", align 1
@__func__.dpu_plane_prepare_fb = private unnamed_addr constant [21 x i8] c"dpu_plane_prepare_fb\00", align 1
@.str.33 = private unnamed_addr constant [66 x i8] c"\013[drm:%s:%d] [dpu error]plane%d failed to get format layout, %d\0A\00", align 1
@.str.34 = private unnamed_addr constant [39 x i8] c"plane%d Check plane state failed (%d)\0A\00", align 1
@.str.35 = private unnamed_addr constant [47 x i8] c"plane%d plane doesn't have scaler/csc for yuv\0A\00", align 1
@.str.36 = private unnamed_addr constant [36 x i8] c"plane%d invalid source %dx%d%+d%+d\0A\00", align 1
@.str.37 = private unnamed_addr constant [40 x i8] c"plane%d invalid yuv source %dx%d%+d%+d\0A\00", align 1
@.str.38 = private unnamed_addr constant [39 x i8] c"plane%d invalid dest rect %dx%d%+d%+d\0A\00", align 1
@.str.39 = private unnamed_addr constant [41 x i8] c"plane%d invalid src %dx%d%+d%+d line:%u\0A\00", align 1
@__tracepoint_dpu_plane_disable = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@.str.41 = private unnamed_addr constant [83 x i8] c"plane%d FB[%u] %d.%06ux%d.%06u%+d.%06u%+d.%06u->crtc%u %dx%d%+d%+d, %4.4s ubwc %d\0A\00", align 1
@.str.42 = private unnamed_addr constant [37 x i8] c"plane%d not updating same src addrs\0A\00", align 1
@__func__._dpu_plane_set_scanout = private unnamed_addr constant [23 x i8] c"_dpu_plane_set_scanout\00", align 1
@__tracepoint_dpu_plane_set_scanout = external dso_local global %struct.tracepoint, align 4
@.str.43 = private unnamed_addr constant [51 x i8] c"plane%d pnum:%d fmt: %4.4s rt:%d fl:%u lut:0x%llx\0A\00", align 1
@.str.44 = private unnamed_addr constant [44 x i8] c"\013[drm:%s:%d] [dpu error]invalid arguments\0A\00", align 1
@__func__._dpu_plane_calc_fill_level = private unnamed_addr constant [27 x i8] c"_dpu_plane_calc_fill_level\00", align 1
@.str.45 = private unnamed_addr constant [28 x i8] c"plane%d/%d src_width:%d/%d\0A\00", align 1
@.str.46 = private unnamed_addr constant [39 x i8] c"plane%d pnum:%d fmt: %4.4s w:%u fl:%u\0A\00", align 1
@__tracepoint_dpu_perf_set_qos_luts = external dso_local global %struct.tracepoint, align 4
@.str.47 = private unnamed_addr constant [53 x i8] c"plane%d pnum:%d fmt: %4.4s mode:%d luts[0x%x, 0x%x]\0A\00", align 1
@__tracepoint_dpu_perf_set_danger_luts = external dso_local global %struct.tracepoint, align 4
@.str.48 = private unnamed_addr constant [51 x i8] c"plane%d pipe:%d vbif:%d xin:%d rt:%d, clk_ctrl:%d\0A\00", align 1
@__drm_debug = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @dpu_plane_clear_multirect(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dpu_plane_state, ptr %0, i32 0, i32 4
  store i32 0, ptr %2, align 8
  %3 = getelementptr inbounds %struct.dpu_plane_state, ptr %0, i32 0, i32 5
  store i32 0, ptr %3, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dpu_plane_validate_multirect_v2(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = alloca [2 x %struct.drm_rect], align 4
  %3 = alloca [2 x %struct.drm_rect], align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %2, i8 0, i32 32, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %3, i8 0, i32 32, i1 false), !annotation !8
  %4 = getelementptr inbounds %struct.dpu_multirect_plane_states, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = tail call ptr @msm_framebuffer_format(ptr noundef %7) #12
  %9 = getelementptr inbounds %struct.dpu_format, ptr %8, i32 0, i32 11
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %12, label %22

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.dpu_format, ptr %8, i32 0, i32 12
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %14, 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.dpu_format, ptr %8, i32 0, i32 14
  %19 = load i16, ptr %18, align 2
  %20 = call i16 @llvm.umax.i16(i16 %19, i16 1)
  %21 = zext i16 %20 to i32
  br label %22

22:                                               ; preds = %17, %12, %1
  %23 = phi i1 [ false, %12 ], [ false, %1 ], [ true, %17 ]
  %24 = phi i32 [ 1, %12 ], [ 1, %1 ], [ %21, %17 ]
  %25 = load ptr, ptr %4, align 4
  %26 = getelementptr inbounds %struct.drm_plane_state, ptr %25, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = tail call ptr @msm_framebuffer_format(ptr noundef %27) #12
  %29 = getelementptr inbounds %struct.dpu_format, ptr %28, i32 0, i32 11
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %32, label %42

32:                                               ; preds = %22
  %33 = getelementptr inbounds %struct.dpu_format, ptr %28, i32 0, i32 12
  %34 = load volatile i32, ptr %33, align 4
  %35 = and i32 %34, 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.dpu_format, ptr %28, i32 0, i32 14
  %39 = load i16, ptr %38, align 2
  %40 = zext i16 %39 to i32
  %41 = tail call i32 @llvm.umax.i32(i32 %24, i32 %40)
  br label %42

42:                                               ; preds = %37, %32, %22
  %43 = phi i1 [ %23, %32 ], [ %23, %22 ], [ true, %37 ]
  %44 = phi i32 [ %24, %32 ], [ %24, %22 ], [ %41, %37 ]
  %45 = load ptr, ptr %5, align 4
  %46 = icmp eq ptr %5, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %111, %42
  %48 = phi ptr [ %45, %42 ], [ %124, %111 ]
  %49 = getelementptr inbounds %struct.drm_plane, ptr %48, i32 0, i32 4
  %50 = load i32, ptr %49, align 8
  %51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dpu_plane_validate_multirect_v2, i32 noundef 784, i32 noundef %50) #13
  br label %233

52:                                               ; preds = %42
  %53 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 8
  %54 = load i32, ptr %53, align 4
  %55 = lshr i32 %54, 16
  store i32 %55, ptr %2, align 4
  %56 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 9
  %57 = load i32, ptr %56, align 4
  %58 = lshr i32 %57, 16
  %59 = getelementptr inbounds [2 x %struct.drm_rect], ptr %2, i32 0, i32 0, i32 1
  store i32 %58, ptr %59, align 4
  %60 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 11
  %61 = load i32, ptr %60, align 4
  %62 = lshr i32 %61, 16
  %63 = add nuw nsw i32 %62, %55
  %64 = getelementptr inbounds [2 x %struct.drm_rect], ptr %2, i32 0, i32 0, i32 2
  store i32 %63, ptr %64, align 4
  %65 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 10
  %66 = load i32, ptr %65, align 4
  %67 = lshr i32 %66, 16
  %68 = add nuw nsw i32 %67, %58
  %69 = getelementptr inbounds [2 x %struct.drm_rect], ptr %2, i32 0, i32 0, i32 3
  store i32 %68, ptr %69, align 4
  %70 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 4
  %71 = load i32, ptr %70, align 4, !noalias !9
  %72 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 5
  %73 = load i32, ptr %72, align 4, !noalias !9
  %74 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 6
  %75 = load i32, ptr %74, align 4, !noalias !9
  %76 = add i32 %75, %71
  %77 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 7
  %78 = load i32, ptr %77, align 4, !noalias !9
  %79 = add i32 %78, %73
  store i32 %71, ptr %3, align 4
  %80 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 %73, ptr %80, align 4
  %81 = getelementptr inbounds i8, ptr %3, i32 8
  store i32 %76, ptr %81, align 4
  %82 = getelementptr inbounds i8, ptr %3, i32 12
  store i32 %79, ptr %82, align 4
  %83 = call i32 @drm_rect_calc_hscale(ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 1) #12
  %84 = icmp eq i32 %83, 1
  br i1 %84, label %85, label %88

85:                                               ; preds = %52
  %86 = call i32 @drm_rect_calc_vscale(ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 1) #12
  %87 = icmp eq i32 %86, 1
  br i1 %87, label %97, label %88

88:                                               ; preds = %161, %126, %85, %52
  %89 = phi ptr [ %45, %52 ], [ %45, %85 ], [ %124, %126 ], [ %124, %161 ]
  %90 = icmp eq ptr %89, null
  br i1 %90, label %94, label %91

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.drm_plane, ptr %89, i32 0, i32 4
  %93 = load i32, ptr %92, align 8
  br label %94

94:                                               ; preds = %91, %88
  %95 = phi i32 [ %93, %91 ], [ -1, %88 ]
  %96 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.dpu_plane_validate_multirect_v2, i32 noundef 798, i32 noundef %95) #13
  br label %233

97:                                               ; preds = %85
  %98 = getelementptr inbounds %struct.dpu_format, ptr %8, i32 0, i32 12
  %99 = load volatile i32, ptr %98, align 4
  %100 = and i32 %99, 1
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %111, label %102

102:                                              ; preds = %164, %97
  %103 = phi ptr [ %45, %97 ], [ %124, %164 ]
  %104 = icmp eq ptr %103, null
  br i1 %104, label %108, label %105

105:                                              ; preds = %102
  %106 = getelementptr inbounds %struct.drm_plane, ptr %103, i32 0, i32 4
  %107 = load i32, ptr %106, align 8
  br label %108

108:                                              ; preds = %105, %102
  %109 = phi i32 [ %107, %105 ], [ -1, %102 ]
  %110 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.dpu_plane_validate_multirect_v2, i32 noundef 804, i32 noundef %109) #13
  br label %233

111:                                              ; preds = %97
  %112 = getelementptr inbounds %struct.dpu_plane, ptr %45, i32 0, i32 9
  %113 = load ptr, ptr %112, align 4
  %114 = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %113, i32 0, i32 1
  %115 = load ptr, ptr %114, align 4
  %116 = getelementptr inbounds %struct.dpu_caps, ptr %115, i32 0, i32 9
  %117 = load i32, ptr %116, align 4
  %118 = sdiv i32 %117, 2
  %119 = select i1 %43, i32 %118, i32 %117
  %120 = load i32, ptr %64, align 4
  %121 = load i32, ptr %2, align 4
  %122 = sub i32 %120, %121
  %123 = icmp sgt i32 %122, %119
  %124 = load ptr, ptr %25, align 4
  %125 = icmp eq ptr %25, null
  br i1 %125, label %47, label %126

126:                                              ; preds = %111
  %127 = getelementptr inbounds %struct.drm_plane_state, ptr %25, i32 0, i32 8
  %128 = load i32, ptr %127, align 4
  %129 = lshr i32 %128, 16
  %130 = getelementptr inbounds [2 x %struct.drm_rect], ptr %2, i32 0, i32 1
  store i32 %129, ptr %130, align 4
  %131 = getelementptr inbounds %struct.drm_plane_state, ptr %25, i32 0, i32 9
  %132 = load i32, ptr %131, align 4
  %133 = lshr i32 %132, 16
  %134 = getelementptr inbounds [2 x %struct.drm_rect], ptr %2, i32 0, i32 1, i32 1
  store i32 %133, ptr %134, align 4
  %135 = getelementptr inbounds %struct.drm_plane_state, ptr %25, i32 0, i32 11
  %136 = load i32, ptr %135, align 4
  %137 = lshr i32 %136, 16
  %138 = add nuw nsw i32 %137, %129
  %139 = getelementptr inbounds [2 x %struct.drm_rect], ptr %2, i32 0, i32 1, i32 2
  store i32 %138, ptr %139, align 4
  %140 = getelementptr inbounds %struct.drm_plane_state, ptr %25, i32 0, i32 10
  %141 = load i32, ptr %140, align 4
  %142 = lshr i32 %141, 16
  %143 = add nuw nsw i32 %142, %133
  %144 = getelementptr inbounds [2 x %struct.drm_rect], ptr %2, i32 0, i32 1, i32 3
  store i32 %143, ptr %144, align 4
  %145 = getelementptr inbounds [2 x %struct.drm_rect], ptr %3, i32 0, i32 1
  %146 = getelementptr inbounds %struct.drm_plane_state, ptr %25, i32 0, i32 4
  %147 = load i32, ptr %146, align 4, !noalias !9
  %148 = getelementptr inbounds %struct.drm_plane_state, ptr %25, i32 0, i32 5
  %149 = load i32, ptr %148, align 4, !noalias !9
  %150 = getelementptr inbounds %struct.drm_plane_state, ptr %25, i32 0, i32 6
  %151 = load i32, ptr %150, align 4, !noalias !9
  %152 = add i32 %151, %147
  %153 = getelementptr inbounds %struct.drm_plane_state, ptr %25, i32 0, i32 7
  %154 = load i32, ptr %153, align 4, !noalias !9
  %155 = add i32 %154, %149
  store i32 %147, ptr %145, align 4
  %156 = getelementptr inbounds [2 x %struct.drm_rect], ptr %3, i32 0, i32 1, i32 1
  store i32 %149, ptr %156, align 4
  %157 = getelementptr inbounds [2 x %struct.drm_rect], ptr %3, i32 0, i32 1, i32 2
  store i32 %152, ptr %157, align 4
  %158 = getelementptr inbounds [2 x %struct.drm_rect], ptr %3, i32 0, i32 1, i32 3
  store i32 %155, ptr %158, align 4
  %159 = call i32 @drm_rect_calc_hscale(ptr noundef %130, ptr noundef %145, i32 noundef 1, i32 noundef 1) #12
  %160 = icmp eq i32 %159, 1
  br i1 %160, label %161, label %88

161:                                              ; preds = %126
  %162 = call i32 @drm_rect_calc_vscale(ptr noundef %130, ptr noundef %145, i32 noundef 1, i32 noundef 1) #12
  %163 = icmp eq i32 %162, 1
  br i1 %163, label %164, label %88

164:                                              ; preds = %161
  %165 = getelementptr inbounds %struct.dpu_format, ptr %28, i32 0, i32 12
  %166 = load volatile i32, ptr %165, align 4
  %167 = and i32 %166, 1
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %102

169:                                              ; preds = %164
  br i1 %123, label %183, label %170

170:                                              ; preds = %169
  %171 = getelementptr inbounds %struct.dpu_plane, ptr %124, i32 0, i32 9
  %172 = load ptr, ptr %171, align 4
  %173 = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %172, i32 0, i32 1
  %174 = load ptr, ptr %173, align 4
  %175 = getelementptr inbounds %struct.dpu_caps, ptr %174, i32 0, i32 9
  %176 = load i32, ptr %175, align 4
  %177 = sdiv i32 %176, 2
  %178 = select i1 %43, i32 %177, i32 %176
  %179 = load i32, ptr %139, align 4
  %180 = load i32, ptr %130, align 4
  %181 = sub i32 %179, %180
  %182 = icmp sgt i32 %181, %178
  br i1 %182, label %183, label %204

183:                                              ; preds = %170, %169
  %184 = shl nuw nsw i32 %44, 1
  %185 = getelementptr inbounds [2 x %struct.drm_rect], ptr %3, i32 0, i32 1, i32 1
  %186 = load i32, ptr %185, align 4
  %187 = load i32, ptr %82, align 4
  %188 = add i32 %187, %184
  %189 = icmp slt i32 %186, %188
  br i1 %189, label %190, label %204

190:                                              ; preds = %183
  %191 = load i32, ptr %80, align 4
  %192 = getelementptr inbounds [2 x %struct.drm_rect], ptr %3, i32 0, i32 1, i32 3
  %193 = load i32, ptr %192, align 4
  %194 = add i32 %193, %184
  %195 = icmp slt i32 %191, %194
  br i1 %195, label %196, label %204

196:                                              ; preds = %190
  %197 = load ptr, ptr %5, align 4
  %198 = getelementptr inbounds %struct.drm_plane, ptr %197, i32 0, i32 4
  %199 = load i32, ptr %198, align 8
  %200 = load ptr, ptr %25, align 4
  %201 = getelementptr inbounds %struct.drm_plane, ptr %200, i32 0, i32 4
  %202 = load i32, ptr %201, align 8
  %203 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dpu_plane_validate_multirect_v2, i32 noundef 846, i32 noundef %199, i32 noundef %202) #13
  br label %233

204:                                              ; preds = %190, %183, %170
  %205 = phi i32 [ 1, %170 ], [ 2, %190 ], [ 2, %183 ]
  %206 = getelementptr inbounds %struct.dpu_plane_state, ptr %5, i32 0, i32 5
  store i32 %205, ptr %206, align 4
  %207 = getelementptr inbounds %struct.dpu_plane_state, ptr %25, i32 0, i32 5
  store i32 %205, ptr %207, align 4
  %208 = getelementptr inbounds %struct.dpu_plane, ptr %45, i32 0, i32 7
  %209 = load i8, ptr %208, align 2, !range !12
  %210 = icmp eq i8 %209, 0
  %211 = select i1 %210, i32 1, i32 2
  %212 = select i1 %210, i32 2, i32 1
  %213 = getelementptr inbounds %struct.dpu_plane_state, ptr %5, i32 0, i32 4
  store i32 %211, ptr %213, align 8
  %214 = getelementptr inbounds %struct.dpu_plane_state, ptr %25, i32 0, i32 4
  store i32 %212, ptr %214, align 8
  %215 = icmp eq ptr %45, null
  br i1 %215, label %219, label %216

216:                                              ; preds = %204
  %217 = getelementptr inbounds %struct.drm_plane, ptr %45, i32 0, i32 4
  %218 = load i32, ptr %217, align 8
  br label %219

219:                                              ; preds = %216, %204
  %220 = phi i32 [ %218, %216 ], [ -1, %204 ]
  %221 = getelementptr inbounds %struct.dpu_plane_state, ptr %5, i32 0, i32 5
  %222 = load i32, ptr %221, align 4
  %223 = load i32, ptr %213, align 8
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.4, i32 noundef %220, i32 noundef %222, i32 noundef %223) #12
  %224 = icmp eq ptr %124, null
  br i1 %224, label %228, label %225

225:                                              ; preds = %219
  %226 = getelementptr inbounds %struct.drm_plane, ptr %124, i32 0, i32 4
  %227 = load i32, ptr %226, align 8
  br label %228

228:                                              ; preds = %225, %219
  %229 = phi i32 [ %227, %225 ], [ -1, %219 ]
  %230 = getelementptr inbounds %struct.dpu_plane_state, ptr %25, i32 0, i32 5
  %231 = load i32, ptr %230, align 4
  %232 = load i32, ptr %214, align 8
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.5, i32 noundef %229, i32 noundef %231, i32 noundef %232) #12
  br label %233

233:                                              ; preds = %228, %196, %108, %94, %47
  %234 = phi i32 [ 0, %228 ], [ -22, %196 ], [ -22, %47 ], [ -22, %94 ], [ -22, %108 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #12
  ret i32 %234
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_framebuffer_format(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_rect_calc_hscale(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_rect_calc_vscale(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dpu_plane_get_ctl_flush(ptr noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %1, i32 0, i32 9, i32 12
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %0, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.dpu_plane, ptr %0, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  br label %10

10:                                               ; preds = %7, %3
  %11 = phi i32 [ %9, %7 ], [ 0, %3 ]
  %12 = tail call i32 %5(ptr noundef %1, i32 noundef %11) #12
  store i32 %12, ptr %2, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @dpu_plane_pipe(ptr noundef readonly %0) local_unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.dpu_plane, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi i32 [ %5, %3 ], [ 0, %1 ]
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dpu_plane_flush(ptr noundef %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 19
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %3, %1
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dpu_plane_flush, i32 noundef 1049) #13
  br label %55

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.dpu_plane, ptr %0, i32 0, i32 5
  %11 = load i8, ptr %10, align 8, !range !12
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call fastcc void @_dpu_plane_color_fill(ptr noundef nonnull %0, i32 noundef 16777215)
  br label %50

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.dpu_plane, ptr %0, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = icmp sgt i32 %16, -1
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  tail call fastcc void @_dpu_plane_color_fill(ptr noundef nonnull %0, i32 noundef %16)
  br label %50

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.dpu_plane, ptr %0, i32 0, i32 3
  %21 = load ptr, ptr %20, align 8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %50, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.dpu_hw_pipe, ptr %21, i32 0, i32 6, i32 4
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %50, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = tail call ptr @msm_framebuffer_format(ptr noundef %29) #12
  %31 = getelementptr inbounds %struct.dpu_format, ptr %30, i32 0, i32 12
  %32 = load volatile i32, ptr %31, align 4
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %50, label %35

35:                                               ; preds = %27
  %36 = load ptr, ptr %20, align 8
  %37 = getelementptr inbounds %struct.dpu_hw_pipe, ptr %36, i32 0, i32 5
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.dpu_sspp_cfg, ptr %38, i32 0, i32 4
  %40 = load i32, ptr %39, align 4
  %41 = and i32 %40, 256
  %42 = icmp eq i32 %41, 0
  %43 = select i1 %42, ptr @dpu_csc_YUV2RGB_601L, ptr @dpu_csc10_YUV2RGB_601L
  %44 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 4
  %45 = load i32, ptr %44, align 8
  %46 = load i32, ptr %43, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.15, i32 noundef %45, i32 noundef %46, i32 noundef 0, i32 noundef 104576) #12
  %47 = load ptr, ptr %20, align 8
  %48 = getelementptr inbounds %struct.dpu_hw_pipe, ptr %47, i32 0, i32 6, i32 4
  %49 = load ptr, ptr %48, align 4
  tail call void %49(ptr noundef %47, ptr noundef nonnull %43) #12
  br label %50

50:                                               ; preds = %35, %27, %23, %19, %18, %13
  %51 = load ptr, ptr %4, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.dpu_plane_state, ptr %5, i32 0, i32 6
  store i8 0, ptr %54, align 8
  br label %55

55:                                               ; preds = %53, %50, %7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @_dpu_plane_color_fill(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #2 {
  %3 = alloca %struct.dpu_hw_pipe_cfg, align 4
  %4 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 19
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 108, ptr nonnull %3) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(108) %3, i8 0, i32 108, i1 false), !annotation !8
  %6 = icmp eq ptr %0, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 4
  %9 = load i32, ptr %8, align 8
  br label %10

10:                                               ; preds = %7, %2
  %11 = phi i32 [ %9, %7 ], [ -1, %2 ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.14, i32 noundef %11) #12
  %12 = tail call ptr @dpu_get_dpu_format_ext(i32 noundef 875708993, i64 noundef 0) #12
  %13 = icmp eq ptr %12, null
  br i1 %13, label %54, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.dpu_plane, ptr %0, i32 0, i32 3
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.dpu_hw_pipe, ptr %16, i32 0, i32 6, i32 5
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %54, label %20

20:                                               ; preds = %14
  %21 = or i32 %1, -16777216
  %22 = getelementptr inbounds %struct.dpu_plane_state, ptr %5, i32 0, i32 4
  %23 = load i32, ptr %22, align 8
  tail call void %18(ptr noundef %16, i32 noundef %21, i32 noundef %23) #12
  %24 = getelementptr inbounds %struct.dpu_hw_pipe_cfg, ptr %3, i32 0, i32 2
  %25 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 21
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %24, ptr noundef align 4 dereferenceable(16) %25, i32 16, i1 false)
  %26 = getelementptr inbounds %struct.dpu_hw_pipe_cfg, ptr %3, i32 0, i32 1
  store i32 0, ptr %26, align 4
  %27 = getelementptr inbounds %struct.dpu_hw_pipe_cfg, ptr %3, i32 0, i32 1, i32 1
  store i32 0, ptr %27, align 4
  %28 = getelementptr inbounds %struct.dpu_hw_pipe_cfg, ptr %3, i32 0, i32 2, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = load i32, ptr %24, align 4
  %31 = sub i32 %29, %30
  %32 = getelementptr inbounds %struct.dpu_hw_pipe_cfg, ptr %3, i32 0, i32 1, i32 2
  store i32 %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.dpu_hw_pipe_cfg, ptr %3, i32 0, i32 2, i32 3
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.dpu_hw_pipe_cfg, ptr %3, i32 0, i32 2, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = sub i32 %34, %36
  %38 = getelementptr inbounds %struct.dpu_hw_pipe_cfg, ptr %3, i32 0, i32 1, i32 3
  store i32 %37, ptr %38, align 4
  %39 = load ptr, ptr %15, align 8
  %40 = getelementptr inbounds %struct.dpu_hw_pipe, ptr %39, i32 0, i32 6
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %20
  %44 = load i32, ptr %22, align 8
  tail call void %41(ptr noundef %39, ptr noundef nonnull %12, i32 noundef 16, i32 noundef %44) #12
  %45 = load ptr, ptr %15, align 8
  br label %46

46:                                               ; preds = %43, %20
  %47 = phi ptr [ %45, %43 ], [ %39, %20 ]
  %48 = getelementptr inbounds %struct.dpu_hw_pipe, ptr %47, i32 0, i32 6, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %46
  %52 = load i32, ptr %22, align 8
  call void %49(ptr noundef %47, ptr noundef nonnull %3, i32 noundef %52) #12
  br label %53

53:                                               ; preds = %51, %46
  call fastcc void @_dpu_plane_setup_scaler(ptr noundef %0, ptr noundef %5, ptr noundef nonnull %12, ptr noundef nonnull %3)
  br label %54

54:                                               ; preds = %53, %14, %10
  call void @llvm.lifetime.end.p0(i64 108, ptr nonnull %3) #12
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @dpu_plane_set_error(ptr noundef writeonly %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %2
  %5 = zext i1 %1 to i8
  %6 = getelementptr inbounds %struct.dpu_plane, ptr %0, i32 0, i32 5
  store i8 %5, ptr %6, align 8
  br label %7

7:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dpu_plane_danger_signal_ctrl(ptr noundef readonly %0, i1 noundef zeroext %1) local_unnamed_addr #2 {
  %3 = alloca %struct.dpu_hw_pipe_qos_cfg, align 4
  %4 = getelementptr inbounds %struct.dpu_plane, ptr %0, i32 0, i32 6
  %5 = load i8, ptr %4, align 1, !range !12
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %40, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 8
  %9 = getelementptr inbounds %struct.drm_device, ptr %8, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.msm_drm_private, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.dpu_kms, ptr %12, i32 0, i32 19
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.platform_device, ptr %14, i32 0, i32 3
  %16 = tail call i32 @__pm_runtime_resume(ptr noundef %15, i32 noundef 4) #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #12
  %17 = getelementptr inbounds %struct.dpu_hw_pipe_qos_cfg, ptr %3, i32 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %3, i8 0, i64 12, i1 false) #12
  %18 = load i8, ptr %4, align 1, !range !12
  %19 = icmp ne i8 %18, 0
  %20 = and i1 %19, %1
  %21 = zext i1 %20 to i8
  store i8 %21, ptr %17, align 1
  %22 = icmp eq ptr %0, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %7
  %24 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 4
  %25 = load i32, ptr %24, align 8
  br label %26

26:                                               ; preds = %23, %7
  %27 = phi i32 [ %25, %23 ], [ -1, %7 ]
  %28 = getelementptr inbounds %struct.dpu_plane, ptr %0, i32 0, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %29, -1
  %31 = zext i1 %20 to i32
  %32 = zext i8 %18 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.16, i32 noundef %27, i32 noundef %30, i32 noundef %31, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %32) #12
  %33 = getelementptr inbounds %struct.dpu_plane, ptr %0, i32 0, i32 3
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds %struct.dpu_hw_pipe, ptr %34, i32 0, i32 6, i32 10
  %36 = load ptr, ptr %35, align 4
  call void %36(ptr noundef %34, ptr noundef nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #12
  %37 = load ptr, ptr %13, align 8
  %38 = getelementptr inbounds %struct.platform_device, ptr %37, i32 0, i32 3
  %39 = call i32 @__pm_runtime_idle(ptr noundef %38, i32 noundef 4) #12
  br label %40

40:                                               ; preds = %26, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dpu_debugfs_sspp_init(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.7, ptr noundef %1) #12
  %4 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %20, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.dpu_kms, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 30, i32 18
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %8
  br i1 %10, label %20, label %11

11:                                               ; preds = %11, %5
  %12 = phi ptr [ %16, %11 ], [ %9, %5 ]
  %13 = getelementptr i8, ptr %12, i32 476
  %14 = load ptr, ptr %13, align 8
  %15 = tail call i32 @_dpu_hw_sspp_init_debugfs(ptr noundef %14, ptr noundef %0, ptr noundef %3) #12
  %16 = load ptr, ptr %12, align 4
  %17 = load ptr, ptr %6, align 8
  %18 = getelementptr inbounds %struct.drm_device, ptr %17, i32 0, i32 30, i32 18
  %19 = icmp eq ptr %16, %18
  br i1 %19, label %20, label %11

20:                                               ; preds = %11, %5, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_dpu_hw_sspp_init_debugfs(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @is_dpu_plane_virtual(ptr noundef readonly %0) local_unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.dpu_plane, ptr %0, i32 0, i32 7
  %5 = load i8, ptr %4, align 2, !range !12
  %6 = icmp ne i8 %5, 0
  br label %7

7:                                                ; preds = %3, %1
  %8 = phi i1 [ %6, %3 ], [ false, %1 ]
  ret i1 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dpu_plane_init(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #2 {
  %6 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.msm_drm_private, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %11 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 504) #14
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %5
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.dpu_plane_init, i32 noundef 1469, i32 noundef %1) #13
  br label %115

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.dpu_plane, ptr %11, i32 0, i32 2
  store i32 %1, ptr %16, align 4
  %17 = icmp ne i32 %4, 0
  %18 = getelementptr inbounds %struct.dpu_plane, ptr %11, i32 0, i32 7
  %19 = zext i1 %17 to i8
  store i8 %19, ptr %18, align 2
  %20 = getelementptr inbounds %struct.dpu_plane, ptr %11, i32 0, i32 8
  store volatile ptr %20, ptr %20, align 4
  %21 = getelementptr inbounds %struct.dpu_plane, ptr %11, i32 0, i32 8, i32 1
  store ptr %20, ptr %21, align 8
  %22 = tail call ptr @drm_mode_object_find(ptr noundef %0, ptr noundef null, i32 noundef %4, i32 noundef -286331154) #12
  %23 = icmp eq ptr %22, null
  %24 = getelementptr i8, ptr %22, i32 -48
  %25 = icmp eq ptr %24, null
  %26 = or i1 %23, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %15
  %28 = getelementptr i8, ptr %22, i32 444
  %29 = getelementptr i8, ptr %22, i32 448
  %30 = load ptr, ptr %29, align 4
  store ptr %20, ptr %29, align 4
  store ptr %28, ptr %20, align 4
  store ptr %30, ptr %21, align 8
  store volatile ptr %20, ptr %30, align 4
  br label %31

31:                                               ; preds = %27, %15
  %32 = getelementptr inbounds %struct.dpu_kms, ptr %9, i32 0, i32 4
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.dpu_kms, ptr %9, i32 0, i32 3
  %35 = load ptr, ptr %34, align 8
  %36 = tail call ptr @dpu_hw_sspp_init(i32 noundef %1, ptr noundef %33, ptr noundef %35, i1 noundef zeroext %17) #12
  %37 = getelementptr inbounds %struct.dpu_plane, ptr %11, i32 0, i32 3
  store ptr %36, ptr %37, align 8
  %38 = icmp ugt ptr %36, inttoptr (i32 -4096 to ptr)
  br i1 %38, label %39, label %43

39:                                               ; preds = %31
  %40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.dpu_plane_init, i32 noundef 1490, i32 noundef %1) #13
  %41 = load ptr, ptr %37, align 8
  %42 = ptrtoint ptr %41 to i32
  br label %109

43:                                               ; preds = %31
  %44 = getelementptr inbounds %struct.dpu_hw_pipe, ptr %36, i32 0, i32 5
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.dpu_sspp_cfg, ptr %45, i32 0, i32 5
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %47, %43
  %52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.dpu_plane_init, i32 noundef 1494, i32 noundef %1) #13
  br label %104

53:                                               ; preds = %47
  %54 = load i8, ptr %18, align 2, !range !12
  %55 = icmp eq i8 %54, 0
  %56 = getelementptr inbounds %struct.dpu_sspp_sub_blks, ptr %49, i32 0, i32 16
  %57 = getelementptr inbounds %struct.dpu_sspp_sub_blks, ptr %49, i32 0, i32 17
  %58 = getelementptr inbounds %struct.dpu_sspp_sub_blks, ptr %49, i32 0, i32 14
  %59 = getelementptr inbounds %struct.dpu_sspp_sub_blks, ptr %49, i32 0, i32 15
  %60 = select i1 %55, ptr %59, ptr %57
  %61 = select i1 %55, ptr %58, ptr %56
  %62 = load ptr, ptr %61, align 4
  %63 = load i32, ptr %60, align 4
  %64 = tail call i32 (ptr, ptr, i32, ptr, ptr, i32, ptr, i32, ptr, ...) @drm_universal_plane_init(ptr noundef %0, ptr noundef nonnull %11, i32 noundef 255, ptr noundef nonnull @dpu_plane_funcs, ptr noundef %62, i32 noundef %63, ptr noundef nonnull @supported_format_modifiers, i32 noundef %2, ptr noundef null) #12
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %104

66:                                               ; preds = %53
  %67 = load ptr, ptr %34, align 8
  %68 = getelementptr inbounds %struct.dpu_plane, ptr %11, i32 0, i32 9
  store ptr %67, ptr %68, align 4
  %69 = load ptr, ptr %34, align 8
  %70 = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %69, i32 0, i32 8
  %71 = load i32, ptr %70, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %84, label %73

73:                                               ; preds = %66
  %74 = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %69, i32 0, i32 9
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.dpu_lm_cfg, ptr %75, i32 0, i32 5
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.dpu_lm_sub_blks, ptr %77, i32 0, i32 1
  %79 = load i32, ptr %78, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %73
  %82 = add i32 %79, -1
  %83 = tail call i32 @llvm.smin.i32(i32 %82, i32 10)
  br label %84

84:                                               ; preds = %81, %73, %66
  %85 = phi i32 [ %83, %81 ], [ 255, %73 ], [ 255, %66 ]
  %86 = tail call i32 @drm_plane_create_zpos_property(ptr noundef nonnull %11, i32 noundef 0, i32 noundef 0, i32 noundef %85) #12
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %84
  %89 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.dpu_plane_init, i32 noundef 1524, i32 noundef %86) #13
  br label %90

90:                                               ; preds = %88, %84
  %91 = tail call i32 @drm_plane_create_alpha_property(ptr noundef nonnull %11) #12
  %92 = tail call i32 @drm_plane_create_blend_mode_property(ptr noundef nonnull %11, i32 noundef 7) #12
  %93 = tail call i32 @drm_plane_create_rotation_property(ptr noundef nonnull %11, i32 noundef 1, i32 noundef 53) #12
  tail call void @drm_plane_enable_fb_damage_clips(ptr noundef nonnull %11) #12
  %94 = getelementptr inbounds %struct.drm_plane, ptr %11, i32 0, i32 18
  store ptr @dpu_plane_helper_funcs, ptr %94, align 8
  %95 = getelementptr inbounds %struct.dpu_plane, ptr %11, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %95, ptr noundef nonnull @.str.12, ptr noundef nonnull @dpu_plane_init.__key) #12
  %96 = load i32, ptr @__drm_debug, align 4
  %97 = and i32 %96, 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %115, label %99

99:                                               ; preds = %90
  %100 = getelementptr inbounds %struct.drm_plane, ptr %11, i32 0, i32 2
  %101 = load ptr, ptr %100, align 4
  %102 = getelementptr inbounds %struct.drm_plane, ptr %11, i32 0, i32 4
  %103 = load i32, ptr %102, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.13, ptr noundef %101, i32 noundef %1, i32 noundef %103, i32 noundef %4) #12
  br label %115

104:                                              ; preds = %53, %51
  %105 = phi i32 [ %64, %53 ], [ -22, %51 ]
  %106 = load ptr, ptr %37, align 8
  %107 = icmp eq ptr %106, null
  br i1 %107, label %109, label %108

108:                                              ; preds = %104
  tail call void @dpu_hw_sspp_destroy(ptr noundef nonnull %106) #12
  br label %109

109:                                              ; preds = %108, %104, %39
  %110 = phi i32 [ %42, %39 ], [ %105, %108 ], [ %105, %104 ]
  %111 = load ptr, ptr %21, align 8
  %112 = load ptr, ptr %20, align 4
  %113 = getelementptr inbounds %struct.list_head, ptr %112, i32 0, i32 1
  store ptr %111, ptr %113, align 4
  store volatile ptr %112, ptr %111, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %20, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %21, align 8
  tail call void @kfree(ptr noundef nonnull %11) #12
  %114 = inttoptr i32 %110 to ptr
  br label %115

115:                                              ; preds = %109, %99, %90, %13
  %116 = phi ptr [ %114, %109 ], [ inttoptr (i32 -12 to ptr), %13 ], [ %11, %90 ], [ %11, %99 ]
  ret ptr %116
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dpu_hw_sspp_init(i32 noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_universal_plane_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_zpos_property(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_alpha_property(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_blend_mode_property(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_rotation_property(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_plane_enable_fb_damage_clips(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpu_hw_sspp_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dpu_get_dpu_format_ext(i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @_dpu_plane_setup_scaler(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) unnamed_addr #2 {
  %5 = alloca %struct.dpu_hw_scaler3_cfg, align 4
  %6 = alloca %struct.dpu_hw_pixel_ext, align 4
  %7 = load i32, ptr %2, align 4
  %8 = tail call ptr @drm_format_info(i32 noundef %7) #12
  call void @llvm.lifetime.start.p0(i64 252, ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(i64 324, ptr nonnull %6) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(252) %5, i8 0, i32 252, i1 false)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(324) %6, i8 0, i32 324, i1 false)
  %9 = getelementptr inbounds %struct.dpu_hw_pipe_cfg, ptr %3, i32 0, i32 1
  %10 = getelementptr inbounds %struct.dpu_hw_pipe_cfg, ptr %3, i32 0, i32 1, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = load i32, ptr %9, align 4
  %13 = sub i32 %11, %12
  %14 = getelementptr inbounds %struct.dpu_hw_pipe_cfg, ptr %3, i32 0, i32 1, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.dpu_hw_pipe_cfg, ptr %3, i32 0, i32 1, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = sub i32 %15, %17
  %19 = getelementptr inbounds %struct.dpu_hw_pipe_cfg, ptr %3, i32 0, i32 2
  %20 = getelementptr inbounds %struct.dpu_hw_pipe_cfg, ptr %3, i32 0, i32 2, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = load i32, ptr %19, align 4
  %23 = sub i32 %21, %22
  %24 = getelementptr inbounds %struct.dpu_hw_pipe_cfg, ptr %3, i32 0, i32 2, i32 3
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.dpu_hw_pipe_cfg, ptr %3, i32 0, i32 2, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = sub i32 %25, %27
  %29 = getelementptr inbounds %struct.drm_format_info, ptr %8, i32 0, i32 6
  %30 = load i8, ptr %29, align 2
  %31 = zext i8 %30 to i32
  %32 = getelementptr inbounds %struct.drm_format_info, ptr %8, i32 0, i32 7
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i32
  %35 = freeze i32 %23
  %36 = udiv i32 2097152, %35
  %37 = mul i32 %36, %35
  %38 = sub i32 2097152, %37
  %39 = mul i32 %36, %13
  %40 = mul i32 %38, %13
  %41 = udiv i32 %40, %23
  %42 = add i32 %41, %39
  %43 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %5, i32 0, i32 3
  store i32 %42, ptr %43, align 4
  %44 = freeze i32 %28
  %45 = udiv i32 2097152, %44
  %46 = mul i32 %45, %44
  %47 = sub i32 2097152, %46
  %48 = mul i32 %45, %18
  %49 = mul i32 %47, %18
  %50 = udiv i32 %49, %28
  %51 = add i32 %50, %48
  %52 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %5, i32 0, i32 5
  store i32 %51, ptr %52, align 4
  %53 = udiv i32 %51, %34
  %54 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %5, i32 0, i32 5, i32 1
  store i32 %53, ptr %54, align 4
  %55 = udiv i32 %42, %31
  %56 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %5, i32 0, i32 3, i32 1
  store i32 %55, ptr %56, align 4
  %57 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %5, i32 0, i32 3, i32 2
  store i32 %55, ptr %57, align 4
  %58 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %5, i32 0, i32 5, i32 2
  store i32 %53, ptr %58, align 4
  %59 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %5, i32 0, i32 3, i32 3
  store i32 %42, ptr %59, align 4
  %60 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %5, i32 0, i32 5, i32 3
  store i32 %51, ptr %60, align 4
  %61 = getelementptr inbounds %struct.dpu_plane, ptr %0, i32 0, i32 3
  %62 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %5, i32 0, i32 8, i32 0
  store i32 %13, ptr %62, align 4
  %63 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %5, i32 0, i32 9, i32 0
  store i32 %18, ptr %63, align 4
  %64 = load ptr, ptr %61, align 8
  %65 = getelementptr inbounds %struct.dpu_hw_pipe, ptr %64, i32 0, i32 5
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.dpu_sspp_cfg, ptr %66, i32 0, i32 4
  %68 = load i32, ptr %67, align 4
  %69 = and i32 %68, 32
  %70 = icmp eq i32 %69, 0
  %71 = select i1 %70, i32 3, i32 2
  %72 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %5, i32 0, i32 6, i32 0
  store i32 4, ptr %72, align 4
  %73 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %5, i32 0, i32 7, i32 0
  store i32 %71, ptr %73, align 4
  %74 = getelementptr inbounds %struct.dpu_hw_pixel_ext, ptr %6, i32 0, i32 7, i32 0
  store i32 %18, ptr %74, align 4
  %75 = getelementptr inbounds %struct.dpu_hw_pixel_ext, ptr %6, i32 0, i32 5, i32 0
  store i32 %13, ptr %75, align 4
  %76 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %5, i32 0, i32 8, i32 1
  %77 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %5, i32 0, i32 9, i32 1
  %78 = udiv i32 %13, %31
  store i32 %78, ptr %76, align 4
  %79 = udiv i32 %18, %34
  store i32 %79, ptr %77, align 4
  %80 = load ptr, ptr %65, align 4
  %81 = getelementptr inbounds %struct.dpu_sspp_cfg, ptr %80, i32 0, i32 4
  %82 = load i32, ptr %81, align 4
  %83 = and i32 %82, 32
  %84 = icmp eq i32 %83, 0
  %85 = select i1 %84, i32 3, i32 2
  %86 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %5, i32 0, i32 6, i32 1
  store i32 4, ptr %86, align 4
  %87 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %5, i32 0, i32 7, i32 1
  store i32 %85, ptr %87, align 4
  %88 = getelementptr inbounds %struct.dpu_hw_pixel_ext, ptr %6, i32 0, i32 7, i32 1
  store i32 %79, ptr %88, align 4
  %89 = getelementptr inbounds %struct.dpu_hw_pixel_ext, ptr %6, i32 0, i32 5, i32 1
  store i32 %78, ptr %89, align 4
  %90 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %5, i32 0, i32 8, i32 2
  %91 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %5, i32 0, i32 9, i32 2
  store i32 %78, ptr %90, align 4
  store i32 %79, ptr %91, align 4
  %92 = load ptr, ptr %65, align 4
  %93 = getelementptr inbounds %struct.dpu_sspp_cfg, ptr %92, i32 0, i32 4
  %94 = load i32, ptr %93, align 4
  %95 = and i32 %94, 32
  %96 = icmp eq i32 %95, 0
  %97 = select i1 %96, i32 3, i32 2
  %98 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %5, i32 0, i32 6, i32 2
  store i32 4, ptr %98, align 4
  %99 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %5, i32 0, i32 7, i32 2
  store i32 %97, ptr %99, align 4
  %100 = getelementptr inbounds %struct.dpu_hw_pixel_ext, ptr %6, i32 0, i32 7, i32 2
  store i32 %79, ptr %100, align 4
  %101 = getelementptr inbounds %struct.dpu_hw_pixel_ext, ptr %6, i32 0, i32 5, i32 2
  store i32 %78, ptr %101, align 4
  %102 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %5, i32 0, i32 8, i32 3
  store i32 %13, ptr %102, align 4
  %103 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %5, i32 0, i32 9, i32 3
  store i32 %18, ptr %103, align 4
  %104 = load ptr, ptr %65, align 4
  %105 = getelementptr inbounds %struct.dpu_sspp_cfg, ptr %104, i32 0, i32 4
  %106 = load i32, ptr %105, align 4
  %107 = and i32 %106, 32
  %108 = icmp eq i32 %107, 0
  %109 = select i1 %108, i32 3, i32 2
  %110 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %5, i32 0, i32 6, i32 3
  store i32 4, ptr %110, align 4
  %111 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %5, i32 0, i32 7, i32 3
  store i32 %109, ptr %111, align 4
  %112 = getelementptr inbounds %struct.dpu_hw_pixel_ext, ptr %6, i32 0, i32 7, i32 3
  store i32 %18, ptr %112, align 4
  %113 = getelementptr inbounds %struct.dpu_hw_pixel_ext, ptr %6, i32 0, i32 5, i32 3
  store i32 %13, ptr %113, align 4
  %114 = getelementptr inbounds %struct.dpu_format, ptr %2, i32 0, i32 12
  %115 = load volatile i32, ptr %114, align 4
  %116 = and i32 %115, 1
  %117 = icmp eq i32 %116, 0
  %118 = icmp eq i32 %18, %28
  %119 = and i1 %118, %117
  %120 = icmp eq i32 %13, %23
  %121 = and i1 %120, %119
  br i1 %121, label %130, label %122

122:                                              ; preds = %4
  %123 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %5, i32 0, i32 10
  store i32 %23, ptr %123, align 4
  %124 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %5, i32 0, i32 11
  store i32 %28, ptr %124, align 4
  %125 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %5, i32 0, i32 12
  store i32 3, ptr %125, align 4
  %126 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %5, i32 0, i32 13
  store i32 3, ptr %126, align 4
  %127 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %5, i32 0, i32 14
  store i32 1, ptr %127, align 4
  %128 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %5, i32 0, i32 16
  store i32 0, ptr %128, align 4
  %129 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %5, i32 0, i32 15
  store i32 1, ptr %129, align 4
  store i32 1, ptr %5, align 4
  br label %130

130:                                              ; preds = %122, %4
  %131 = getelementptr inbounds %struct.dpu_hw_pipe, ptr %64, i32 0, i32 6, i32 2
  %132 = load ptr, ptr %131, align 4
  %133 = icmp eq ptr %132, null
  br i1 %133, label %136, label %134

134:                                              ; preds = %130
  call void %132(ptr noundef %64, ptr noundef nonnull %6) #12
  %135 = load ptr, ptr %61, align 8
  br label %136

136:                                              ; preds = %134, %130
  %137 = phi ptr [ %135, %134 ], [ %64, %130 ]
  %138 = getelementptr inbounds %struct.dpu_hw_pipe, ptr %137, i32 0, i32 6, i32 12
  %139 = load ptr, ptr %138, align 4
  %140 = icmp eq ptr %139, null
  br i1 %140, label %146, label %141

141:                                              ; preds = %136
  %142 = getelementptr inbounds %struct.dpu_plane_state, ptr %1, i32 0, i32 4
  %143 = load i32, ptr %142, align 8
  %144 = icmp eq i32 %143, 2
  br i1 %144, label %146, label %145

145:                                              ; preds = %141
  call void %139(ptr noundef %137, ptr noundef %3, ptr noundef nonnull %5) #12
  br label %146

146:                                              ; preds = %145, %141, %136
  call void @llvm.lifetime.end.p0(i64 324, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 252, ptr nonnull %5) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_format_info(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_object_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_update_plane(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_disable_plane(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_plane_destroy(ptr noundef %0) #2 {
  %2 = alloca %struct.dpu_hw_pipe_qos_cfg, align 4
  %3 = icmp eq ptr %0, null
  br i1 %3, label %19, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 4
  %6 = load i32, ptr %5, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.14, i32 noundef %6) #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #12
  %7 = getelementptr inbounds %struct.dpu_plane, ptr %0, i32 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %2, i8 0, i64 12, i1 false)
  %8 = load i8, ptr %7, align 1, !range !12
  %9 = load i32, ptr %5, align 8
  %10 = getelementptr inbounds %struct.dpu_plane, ptr %0, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, -1
  %13 = zext i8 %8 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.16, i32 noundef %9, i32 noundef %12, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %13) #12
  %14 = getelementptr inbounds %struct.dpu_plane, ptr %0, i32 0, i32 3
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.dpu_hw_pipe, ptr %15, i32 0, i32 6, i32 10
  %17 = load ptr, ptr %16, align 4
  call void %17(ptr noundef %15, ptr noundef nonnull %2) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #12
  call void @drm_plane_cleanup(ptr noundef nonnull %0) #12
  %18 = load ptr, ptr %14, align 8
  call void @dpu_hw_sspp_destroy(ptr noundef %18) #12
  call void @kfree(ptr noundef nonnull %0) #12
  br label %20

19:                                               ; preds = %1
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.14, i32 noundef -1) #12
  br label %20

20:                                               ; preds = %19, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_plane_reset(ptr noundef %0) #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dpu_plane_reset, i32 noundef 1354) #13
  br label %20

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 4
  %7 = load i32, ptr %6, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.14, i32 noundef %7) #12
  %8 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 19
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %5
  tail call void @__drm_atomic_helper_plane_destroy_state(ptr noundef nonnull %9) #12
  tail call void @kfree(ptr noundef nonnull %9) #12
  store ptr null, ptr %8, align 4
  br label %12

12:                                               ; preds = %11, %5
  %13 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %14 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 168) #14
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i32, ptr %6, align 8
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.dpu_plane_reset, i32 noundef 1369, i32 noundef %17) #13
  br label %20

19:                                               ; preds = %12
  tail call void @__drm_atomic_helper_plane_reset(ptr noundef nonnull %0, ptr noundef nonnull %14) #12
  br label %20

20:                                               ; preds = %19, %16, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @dpu_plane_duplicate_state(ptr noundef %0) #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dpu_plane_duplicate_state, i32 noundef 1284) #13
  br label %20

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 19
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.dpu_plane_duplicate_state, i32 noundef 1287) #13
  br label %20

11:                                               ; preds = %5
  %12 = tail call ptr @kmemdup(ptr noundef nonnull %7, i32 noundef 168, i32 noundef 3264) #12
  %13 = icmp eq ptr %12, null
  %14 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 4
  %15 = load i32, ptr %14, align 8
  br i1 %13, label %16, label %18

16:                                               ; preds = %11
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.dpu_plane_duplicate_state, i32 noundef 1295, i32 noundef %15) #13
  br label %20

18:                                               ; preds = %11
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.14, i32 noundef %15) #12
  %19 = getelementptr inbounds %struct.dpu_plane_state, ptr %12, i32 0, i32 6
  store i8 0, ptr %19, align 8
  tail call void @__drm_atomic_helper_plane_duplicate_state(ptr noundef nonnull %0, ptr noundef nonnull %12) #12
  br label %20

20:                                               ; preds = %18, %16, %9, %3
  %21 = phi ptr [ %12, %18 ], [ null, %16 ], [ null, %9 ], [ null, %3 ]
  ret ptr %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_plane_destroy_state(ptr nocapture noundef readnone %0, ptr noundef %1) #2 {
  tail call void @__drm_atomic_helper_plane_destroy_state(ptr noundef %1) #12
  tail call void @kfree(ptr noundef %1) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_plane_atomic_print_state(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr inbounds %struct.dpu_plane_state, ptr %1, i32 0, i32 2
  %5 = load i32, ptr %4, align 8
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %0, ptr noundef nonnull @.str.19, i32 noundef %5) #12
  %6 = getelementptr inbounds %struct.dpu_plane, ptr %3, i32 0, i32 3
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.dpu_hw_pipe, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %0, ptr noundef nonnull @.str.20, ptr noundef %9) #12
  %10 = getelementptr inbounds %struct.dpu_plane_state, ptr %1, i32 0, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = icmp ugt i32 %11, 2
  br i1 %12, label %13, label %14, !prof !13

13:                                               ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 1322, i32 noundef 9, ptr noundef null) #12
  br label %17

14:                                               ; preds = %2
  %15 = getelementptr [3 x ptr], ptr @multirect_mode_name, i32 0, i32 %11
  %16 = load ptr, ptr %15, align 4
  br label %17

17:                                               ; preds = %14, %13
  %18 = phi ptr [ @.str.24, %13 ], [ %16, %14 ]
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %0, ptr noundef nonnull @.str.21, ptr noundef %18) #12
  %19 = getelementptr inbounds %struct.dpu_plane_state, ptr %1, i32 0, i32 4
  %20 = load i32, ptr %19, align 8
  %21 = icmp ugt i32 %20, 2
  br i1 %21, label %22, label %23, !prof !13

22:                                               ; preds = %17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 1330, i32 noundef 9, ptr noundef null) #12
  br label %26

23:                                               ; preds = %17
  %24 = getelementptr [3 x ptr], ptr @multirect_index_name, i32 0, i32 %20
  %25 = load ptr, ptr %24, align 4
  br label %26

26:                                               ; preds = %23, %22
  %27 = phi ptr [ @.str.24, %22 ], [ %25, %23 ]
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %0, ptr noundef nonnull @.str.22, ptr noundef %27) #12
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong uwtable(sync)
define internal zeroext i1 @dpu_plane_format_mod_supported(ptr nocapture noundef readnone %0, i32 noundef %1, i64 noundef %2) #9 {
  switch i64 %2, label %5 [
    i64 0, label %6
    i64 360287970189639681, label %4
  ]

4:                                                ; preds = %3
  switch i32 %1, label %5 [
    i32 875708993, label %6
    i32 875713089, label %6
    i32 875709016, label %6
    i32 875713112, label %6
    i32 909199170, label %6
    i32 842094158, label %6
  ]

5:                                                ; preds = %4, %3
  br label %6

6:                                                ; preds = %5, %4, %4, %4, %4, %4, %4, %3
  %7 = phi i1 [ false, %5 ], [ true, %3 ], [ true, %4 ], [ true, %4 ], [ true, %4 ], [ true, %4 ], [ true, %4 ], [ true, %4 ]
  ret i1 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_plane_cleanup(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_plane_reset(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_plane_duplicate_state(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_plane_destroy_state(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dpu_plane_prepare_fb(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca %struct.dpu_hw_fmt_layout, align 4
  %4 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %3) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(68) %3, i8 0, i32 68, i1 false), !annotation !8
  %6 = load ptr, ptr %0, align 8
  %7 = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.msm_drm_private, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %5, null
  br i1 %11, label %47, label %12

12:                                               ; preds = %2
  %13 = icmp eq ptr %0, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 4
  %16 = load i32, ptr %15, align 8
  br label %17

17:                                               ; preds = %14, %12
  %18 = phi i32 [ %16, %14 ], [ -1, %12 ]
  %19 = getelementptr inbounds %struct.drm_framebuffer, ptr %5, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.31, i32 noundef %18, i32 noundef %20) #12
  %21 = getelementptr inbounds %struct.msm_kms, ptr %10, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.dpu_plane_state, ptr %1, i32 0, i32 1
  store ptr %22, ptr %23, align 4
  %24 = tail call i32 @drm_gem_plane_helper_prepare_fb(ptr noundef %0, ptr noundef %1) #12
  %25 = load ptr, ptr %23, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %35, label %27

27:                                               ; preds = %17
  %28 = load ptr, ptr %4, align 4
  %29 = tail call i32 @msm_framebuffer_prepare(ptr noundef %28, ptr noundef nonnull %25) #12
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load ptr, ptr %23, align 4
  br label %35

33:                                               ; preds = %27
  %34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @__func__.dpu_plane_prepare_fb, i32 noundef 907) #13
  br label %47

35:                                               ; preds = %31, %17
  %36 = phi ptr [ %32, %31 ], [ null, %17 ]
  %37 = load ptr, ptr %4, align 4
  %38 = call i32 @dpu_format_populate_layout(ptr noundef %36, ptr noundef %37, ptr noundef nonnull %3) #12
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %35
  br i1 %13, label %44, label %41

41:                                               ; preds = %40
  %42 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 4
  %43 = load i32, ptr %42, align 8
  br label %44

44:                                               ; preds = %41, %40
  %45 = phi i32 [ %43, %41 ], [ -1, %40 ]
  %46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @__func__.dpu_plane_prepare_fb, i32 noundef 916, i32 noundef %45, i32 noundef %38) #13
  br label %47

47:                                               ; preds = %44, %35, %33, %2
  %48 = phi i32 [ %29, %33 ], [ %38, %44 ], [ 0, %2 ], [ 0, %35 ]
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %3) #12
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_plane_cleanup_fb(ptr noundef readonly %0, ptr noundef readonly %1) #2 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %20, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %20, label %8

8:                                                ; preds = %4
  %9 = icmp eq ptr %0, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 4
  %12 = load i32, ptr %11, align 8
  br label %13

13:                                               ; preds = %10, %8
  %14 = phi i32 [ %12, %10 ], [ -1, %8 ]
  %15 = getelementptr inbounds %struct.drm_framebuffer, ptr %6, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.31, i32 noundef %14, i32 noundef %16) #12
  %17 = load ptr, ptr %5, align 4
  %18 = getelementptr inbounds %struct.dpu_plane_state, ptr %1, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  tail call void @msm_framebuffer_cleanup(ptr noundef %17, ptr noundef %19) #12
  br label %20

20:                                               ; preds = %13, %4, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dpu_plane_atomic_check(ptr noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca %struct.drm_rect, align 4
  %4 = alloca %struct.drm_rect, align 8
  %5 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 17
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr %struct.__drm_planes_state, ptr %6, i32 %8, i32 3
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #12
  store i64 0, ptr %4, align 8
  %11 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.drm_crtc, ptr %12, i32 0, i32 8
  %18 = load i32, ptr %17, align 8
  %19 = getelementptr %struct.__drm_crtcs_state, ptr %16, i32 %18, i32 3
  %20 = load ptr, ptr %19, align 4
  br label %21

21:                                               ; preds = %14, %2
  %22 = phi ptr [ %20, %14 ], [ null, %2 ]
  %23 = getelementptr inbounds %struct.dpu_plane, ptr %0, i32 0, i32 3
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.dpu_hw_pipe, ptr %24, i32 0, i32 5
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.dpu_sspp_cfg, ptr %26, i32 0, i32 5
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.dpu_sspp_sub_blks, ptr %28, i32 0, i32 3
  %30 = load i32, ptr %29, align 4
  %31 = udiv i32 65536, %30
  %32 = getelementptr inbounds %struct.dpu_sspp_sub_blks, ptr %28, i32 0, i32 2
  %33 = load i32, ptr %32, align 4
  %34 = shl i32 %33, 16
  %35 = tail call i32 @drm_atomic_helper_check_plane_state(ptr noundef %10, ptr noundef %22, i32 noundef %31, i32 noundef %34, i1 noundef zeroext true, i1 noundef zeroext true) #12
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %21
  %38 = icmp eq ptr %0, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 4
  %41 = load i32, ptr %40, align 8
  br label %42

42:                                               ; preds = %39, %37
  %43 = phi i32 [ %41, %39 ], [ -1, %37 ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.34, i32 noundef %43, i32 noundef %35) #12
  br label %213

44:                                               ; preds = %21
  %45 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 22
  %46 = load i8, ptr %45, align 4, !range !12
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %213, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 8
  %50 = load i32, ptr %49, align 4
  %51 = lshr i32 %50, 16
  store i32 %51, ptr %3, align 4
  %52 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 9
  %53 = load i32, ptr %52, align 4
  %54 = lshr i32 %53, 16
  %55 = getelementptr inbounds %struct.drm_rect, ptr %3, i32 0, i32 1
  store i32 %54, ptr %55, align 4
  %56 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 11
  %57 = load i32, ptr %56, align 4
  %58 = lshr i32 %57, 16
  %59 = add nuw nsw i32 %58, %51
  %60 = getelementptr inbounds %struct.drm_rect, ptr %3, i32 0, i32 2
  store i32 %59, ptr %60, align 4
  %61 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 10
  %62 = load i32, ptr %61, align 4
  %63 = lshr i32 %62, 16
  %64 = add nuw nsw i32 %63, %54
  %65 = getelementptr inbounds %struct.drm_rect, ptr %3, i32 0, i32 3
  store i32 %64, ptr %65, align 4
  %66 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 4
  %67 = load i32, ptr %66, align 4, !noalias !14
  %68 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 5
  %69 = load i32, ptr %68, align 4, !noalias !14
  %70 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 6
  %71 = load i32, ptr %70, align 4, !noalias !14
  %72 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 7
  %73 = load i32, ptr %72, align 4, !noalias !14
  %74 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 2
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.drm_framebuffer, ptr %75, i32 0, i32 9
  %77 = load i32, ptr %76, align 8
  %78 = getelementptr inbounds %struct.drm_rect, ptr %4, i32 0, i32 2
  store i32 %77, ptr %78, align 8
  %79 = load ptr, ptr %74, align 4
  %80 = getelementptr inbounds %struct.drm_framebuffer, ptr %79, i32 0, i32 10
  %81 = load i32, ptr %80, align 4
  %82 = getelementptr inbounds %struct.drm_rect, ptr %4, i32 0, i32 3
  store i32 %81, ptr %82, align 4
  %83 = getelementptr inbounds %struct.dpu_plane, ptr %0, i32 0, i32 9
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %84, i32 0, i32 1
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.dpu_caps, ptr %86, i32 0, i32 9
  %88 = load i32, ptr %87, align 4
  %89 = load ptr, ptr %74, align 4
  %90 = tail call ptr @msm_framebuffer_format(ptr noundef %89) #12
  %91 = getelementptr inbounds %struct.dpu_format, ptr %90, i32 0, i32 12
  %92 = load volatile i32, ptr %91, align 4
  %93 = and i32 %92, 1
  %94 = icmp eq i32 %93, 0
  %95 = select i1 %94, i32 1, i32 2
  %96 = load volatile i32, ptr %91, align 4
  %97 = and i32 %96, 1
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %117, label %99

99:                                               ; preds = %48
  %100 = load ptr, ptr %23, align 8
  %101 = getelementptr inbounds %struct.dpu_hw_pipe, ptr %100, i32 0, i32 5
  %102 = load ptr, ptr %101, align 4
  %103 = getelementptr inbounds %struct.dpu_sspp_cfg, ptr %102, i32 0, i32 4
  %104 = load i32, ptr %103, align 4
  %105 = and i32 %104, 124
  %106 = icmp eq i32 %105, 0
  %107 = and i32 %104, 384
  %108 = icmp eq i32 %107, 0
  %109 = or i1 %106, %108
  br i1 %109, label %110, label %117

110:                                              ; preds = %99
  %111 = icmp eq ptr %0, null
  br i1 %111, label %115, label %112

112:                                              ; preds = %110
  %113 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 4
  %114 = load i32, ptr %113, align 8
  br label %115

115:                                              ; preds = %112, %110
  %116 = phi i32 [ %114, %112 ], [ -1, %110 ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.35, i32 noundef %116) #12
  br label %213

117:                                              ; preds = %99, %48
  %118 = icmp sgt i32 %77, 16383
  br i1 %118, label %144, label %119

119:                                              ; preds = %117
  %120 = getelementptr inbounds %struct.drm_rect, ptr %4, i32 0, i32 1
  %121 = icmp sgt i32 %81, 16383
  %122 = icmp ult i32 %58, %95
  %123 = select i1 %121, i1 true, i1 %122
  %124 = icmp ult i32 %63, %95
  %125 = select i1 %123, i1 true, i1 %124
  br i1 %125, label %144, label %126

126:                                              ; preds = %119
  %127 = call zeroext i1 @drm_rect_intersect(ptr noundef nonnull %4, ptr noundef nonnull %3) #12
  br i1 %127, label %128, label %144

128:                                              ; preds = %126
  %129 = load i32, ptr %4, align 8
  %130 = load i32, ptr %3, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %144

132:                                              ; preds = %128
  %133 = load i32, ptr %78, align 8
  %134 = load i32, ptr %60, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %144

136:                                              ; preds = %132
  %137 = load i32, ptr %120, align 4
  %138 = load i32, ptr %55, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %144

140:                                              ; preds = %136
  %141 = load i32, ptr %82, align 4
  %142 = load i32, ptr %65, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %157, label %144

144:                                              ; preds = %140, %136, %132, %128, %126, %119, %117
  %145 = icmp eq ptr %0, null
  br i1 %145, label %149, label %146

146:                                              ; preds = %144
  %147 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 4
  %148 = load i32, ptr %147, align 8
  br label %149

149:                                              ; preds = %146, %144
  %150 = phi i32 [ %148, %146 ], [ -1, %144 ]
  %151 = load i32, ptr %60, align 4
  %152 = load i32, ptr %3, align 4
  %153 = sub i32 %151, %152
  %154 = load i32, ptr %65, align 4
  %155 = load i32, ptr %55, align 4
  %156 = sub i32 %154, %155
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.36, i32 noundef %150, i32 noundef %153, i32 noundef %156, i32 noundef %152, i32 noundef %155) #12
  br label %213

157:                                              ; preds = %140
  %158 = load volatile i32, ptr %91, align 4
  %159 = and i32 %158, 1
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %184, label %161

161:                                              ; preds = %157
  %162 = and i32 %129, 1
  %163 = icmp eq i32 %162, 0
  %164 = and i32 %137, 1
  %165 = icmp eq i32 %164, 0
  %166 = select i1 %163, i1 %165, i1 false
  br i1 %166, label %167, label %175

167:                                              ; preds = %161
  %168 = sub i32 %133, %129
  %169 = and i32 %168, 1
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %167
  %172 = sub i32 %141, %137
  %173 = and i32 %172, 1
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %184, label %175

175:                                              ; preds = %171, %167, %161
  %176 = icmp eq ptr %0, null
  br i1 %176, label %180, label %177

177:                                              ; preds = %175
  %178 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 4
  %179 = load i32, ptr %178, align 8
  br label %180

180:                                              ; preds = %177, %175
  %181 = phi i32 [ %179, %177 ], [ -1, %175 ]
  %182 = sub i32 %133, %129
  %183 = sub i32 %141, %137
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.37, i32 noundef %181, i32 noundef %182, i32 noundef %183, i32 noundef %129, i32 noundef %137) #12
  br label %213

184:                                              ; preds = %171, %157
  %185 = icmp slt i32 %71, 1
  %186 = icmp slt i32 %73, 1
  %187 = select i1 %185, i1 true, i1 %186
  br i1 %187, label %188, label %195

188:                                              ; preds = %184
  %189 = icmp eq ptr %0, null
  br i1 %189, label %193, label %190

190:                                              ; preds = %188
  %191 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 4
  %192 = load i32, ptr %191, align 8
  br label %193

193:                                              ; preds = %190, %188
  %194 = phi i32 [ %192, %190 ], [ -1, %188 ]
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.38, i32 noundef %194, i32 noundef %71, i32 noundef %73, i32 noundef %67, i32 noundef %69) #12
  br label %213

195:                                              ; preds = %184
  %196 = sub i32 %133, %129
  %197 = icmp ugt i32 %196, %88
  br i1 %197, label %198, label %206

198:                                              ; preds = %195
  %199 = icmp eq ptr %0, null
  br i1 %199, label %203, label %200

200:                                              ; preds = %198
  %201 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 4
  %202 = load i32, ptr %201, align 8
  br label %203

203:                                              ; preds = %200, %198
  %204 = phi i32 [ %202, %200 ], [ -1, %198 ]
  %205 = sub i32 %141, %137
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.39, i32 noundef %204, i32 noundef %196, i32 noundef %205, i32 noundef %129, i32 noundef %137, i32 noundef %88) #12
  br label %213

206:                                              ; preds = %195
  %207 = getelementptr inbounds %struct.drm_crtc_state, ptr %22, i32 0, i32 3
  %208 = load i8, ptr %207, align 2
  %209 = and i8 %208, 14
  %210 = icmp ne i8 %209, 0
  %211 = getelementptr inbounds %struct.dpu_plane_state, ptr %10, i32 0, i32 3
  %212 = zext i1 %210 to i8
  store i8 %212, ptr %211, align 4
  br label %213

213:                                              ; preds = %206, %203, %193, %180, %149, %115, %44, %42
  %214 = phi i32 [ %35, %42 ], [ -22, %180 ], [ -22, %193 ], [ -7, %203 ], [ 0, %206 ], [ -7, %149 ], [ -22, %115 ], [ 0, %44 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #12
  ret i32 %214
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_plane_atomic_update(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca %struct.dpu_vbif_set_qos_params, align 4
  %4 = alloca %struct.dpu_vbif_set_ot_params, align 4
  %5 = alloca %struct.dpu_hw_pipe_qos_cfg, align 4
  %6 = alloca %struct.dpu_hw_pipe_qos_cfg, align 4
  %7 = alloca %struct.dpu_hw_pipe_cfg, align 4
  %8 = alloca %struct.dpu_hw_pipe_cdp_cfg, align 8
  %9 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 17
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr %struct.__drm_planes_state, ptr %10, i32 %12, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.dpu_plane, ptr %0, i32 0, i32 5
  store i8 0, ptr %15, align 8
  %16 = icmp eq ptr %0, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 4
  %19 = load i32, ptr %18, align 8
  br label %20

20:                                               ; preds = %17, %2
  %21 = phi i32 [ %19, %17 ], [ -1, %2 ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.14, i32 noundef %21) #12
  %22 = getelementptr inbounds %struct.drm_plane_state, ptr %14, i32 0, i32 22
  %23 = load i8, ptr %22, align 4, !range !12
  %24 = icmp eq i8 %23, 0
  %25 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 19
  %26 = load ptr, ptr %25, align 4
  br i1 %24, label %27, label %69

27:                                               ; preds = %20
  br i1 %16, label %34, label %28

28:                                               ; preds = %27
  %29 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 4
  %30 = load i32, ptr %29, align 8
  %31 = getelementptr inbounds %struct.dpu_plane, ptr %0, i32 0, i32 7
  %32 = load i8, ptr %31, align 2, !range !12
  %33 = icmp ne i8 %32, 0
  br label %34

34:                                               ; preds = %28, %27
  %35 = phi i32 [ %30, %28 ], [ -1, %27 ]
  %36 = phi i1 [ %33, %28 ], [ false, %27 ]
  %37 = getelementptr inbounds %struct.dpu_plane_state, ptr %26, i32 0, i32 5
  %38 = load i32, ptr %37, align 4
  %39 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_plane_disable, i32 0, i32 1), align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %34
  %42 = tail call ptr @llvm.thread.pointer() #12
  %43 = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 2
  %44 = load i32, ptr %43, align 8
  %45 = lshr i32 %44, 5
  %46 = getelementptr i32, ptr @__cpu_online_mask, i32 %45
  %47 = load volatile i32, ptr %46, align 4
  %48 = and i32 %44, 31
  %49 = shl nuw i32 1, %48
  %50 = and i32 %49, %47
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %41
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !17
  %53 = tail call i32 @__traceiter_dpu_plane_disable(ptr noundef null, i32 noundef %35, i1 noundef zeroext %36, i32 noundef %38) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !18
  br label %54

54:                                               ; preds = %52, %41, %34
  %55 = getelementptr inbounds %struct.dpu_plane_state, ptr %26, i32 0, i32 6
  store i8 1, ptr %55, align 8
  br i1 %16, label %773, label %56

56:                                               ; preds = %54
  %57 = getelementptr inbounds %struct.dpu_plane, ptr %0, i32 0, i32 7
  %58 = load i8, ptr %57, align 2, !range !12
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %773, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.dpu_plane, ptr %0, i32 0, i32 3
  %62 = load ptr, ptr %61, align 8
  %63 = icmp eq ptr %62, null
  br i1 %63, label %773, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.dpu_hw_pipe, ptr %62, i32 0, i32 6, i32 6
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %773, label %68

68:                                               ; preds = %64
  tail call void %66(ptr noundef nonnull %62, i32 noundef 0, i32 noundef 0) #12
  br label %773

69:                                               ; preds = %20
  %70 = getelementptr inbounds %struct.drm_plane_state, ptr %26, i32 0, i32 1
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.drm_plane_state, ptr %26, i32 0, i32 2
  %73 = load ptr, ptr %72, align 4
  %74 = tail call ptr @msm_framebuffer_format(ptr noundef %73) #12
  call void @llvm.lifetime.start.p0(i64 108, ptr nonnull %7) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(108) %7, i8 0, i64 108, i1 false) #12
  %75 = load ptr, ptr %0, align 8
  %76 = getelementptr inbounds %struct.drm_device, ptr %75, i32 0, i32 5
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.msm_drm_private, ptr %77, i32 0, i32 1
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.msm_kms, ptr %79, i32 0, i32 3
  %81 = load ptr, ptr %80, align 4
  %82 = call i32 @dpu_format_populate_layout(ptr noundef %81, ptr noundef %73, ptr noundef nonnull %7) #12
  switch i32 %82, label %89 [
    i32 -11, label %83
    i32 0, label %96
  ]

83:                                               ; preds = %69
  br i1 %16, label %87, label %84

84:                                               ; preds = %83
  %85 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 4
  %86 = load i32, ptr %85, align 8
  br label %87

87:                                               ; preds = %84, %83
  %88 = phi i32 [ %86, %84 ], [ -1, %83 ]
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.42, i32 noundef %88) #12
  br label %130

89:                                               ; preds = %69
  br i1 %16, label %93, label %90

90:                                               ; preds = %89
  %91 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 4
  %92 = load i32, ptr %91, align 8
  br label %93

93:                                               ; preds = %90, %89
  %94 = phi i32 [ %92, %90 ], [ -1, %89 ]
  %95 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @__func__._dpu_plane_set_scanout, i32 noundef 517, i32 noundef %94, i32 noundef %82) #13
  br label %130

96:                                               ; preds = %69
  %97 = getelementptr inbounds %struct.dpu_plane, ptr %0, i32 0, i32 3
  %98 = load ptr, ptr %97, align 8
  %99 = getelementptr inbounds %struct.dpu_hw_pipe, ptr %98, i32 0, i32 6, i32 3
  %100 = load ptr, ptr %99, align 4
  %101 = icmp eq ptr %100, null
  br i1 %101, label %130, label %102

102:                                              ; preds = %96
  %103 = getelementptr inbounds %struct.dpu_hw_pipe, ptr %98, i32 0, i32 4
  %104 = load i32, ptr %103, align 4
  %105 = getelementptr inbounds %struct.dpu_plane_state, ptr %26, i32 0, i32 4
  %106 = load i32, ptr %105, align 8
  %107 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_plane_set_scanout, i32 0, i32 1), align 4
  %108 = icmp sgt i32 %107, 0
  br i1 %108, label %109, label %126

109:                                              ; preds = %102
  %110 = tail call ptr @llvm.thread.pointer() #12
  %111 = getelementptr inbounds %struct.thread_info, ptr %110, i32 0, i32 2
  %112 = load i32, ptr %111, align 8
  %113 = lshr i32 %112, 5
  %114 = getelementptr i32, ptr @__cpu_online_mask, i32 %113
  %115 = load volatile i32, ptr %114, align 4
  %116 = and i32 %112, 31
  %117 = shl nuw i32 1, %116
  %118 = and i32 %117, %115
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %126, label %120

120:                                              ; preds = %109
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !19
  %121 = call i32 @__traceiter_dpu_plane_set_scanout(ptr noundef null, i32 noundef %104, ptr noundef nonnull %7, i32 noundef %106) #12
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !20
  %122 = load ptr, ptr %97, align 8
  %123 = getelementptr inbounds %struct.dpu_hw_pipe, ptr %122, i32 0, i32 6, i32 3
  %124 = load ptr, ptr %123, align 4
  %125 = load i32, ptr %105, align 8
  br label %126

126:                                              ; preds = %120, %109, %102
  %127 = phi i32 [ %106, %102 ], [ %106, %109 ], [ %125, %120 ]
  %128 = phi ptr [ %100, %102 ], [ %100, %109 ], [ %124, %120 ]
  %129 = phi ptr [ %98, %102 ], [ %98, %109 ], [ %122, %120 ]
  call void %128(ptr noundef %129, ptr noundef nonnull %7, i32 noundef %127) #12
  br label %130

130:                                              ; preds = %126, %96, %93, %87
  %131 = getelementptr inbounds %struct.dpu_plane_state, ptr %26, i32 0, i32 6
  store i8 1, ptr %131, align 8
  %132 = icmp eq ptr %71, null
  br i1 %132, label %138, label %133

133:                                              ; preds = %130
  %134 = getelementptr inbounds %struct.drm_crtc, ptr %71, i32 0, i32 22
  %135 = load ptr, ptr %134, align 4
  %136 = icmp eq ptr %135, null
  %137 = zext i1 %136 to i8
  br label %138

138:                                              ; preds = %133, %130
  %139 = phi i8 [ 1, %130 ], [ %137, %133 ]
  %140 = xor i8 %139, 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #12
  %141 = getelementptr inbounds %struct.dpu_plane, ptr %0, i32 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %6, i8 0, i64 12, i1 false) #12
  %142 = load i8, ptr %141, align 1, !range !12
  br i1 %16, label %146, label %143

143:                                              ; preds = %138
  %144 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 4
  %145 = load i32, ptr %144, align 8
  br label %146

146:                                              ; preds = %143, %138
  %147 = phi i32 [ %145, %143 ], [ -1, %138 ]
  %148 = getelementptr inbounds %struct.dpu_plane, ptr %0, i32 0, i32 2
  %149 = load i32, ptr %148, align 4
  %150 = add i32 %149, -1
  %151 = zext i8 %142 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.16, i32 noundef %147, i32 noundef %150, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %151) #12
  %152 = getelementptr inbounds %struct.dpu_plane, ptr %0, i32 0, i32 3
  %153 = load ptr, ptr %152, align 8
  %154 = getelementptr inbounds %struct.dpu_hw_pipe, ptr %153, i32 0, i32 6, i32 10
  %155 = load ptr, ptr %154, align 4
  call void %155(ptr noundef %153, ptr noundef nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #12
  br i1 %16, label %159, label %156

156:                                              ; preds = %146
  %157 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 4
  %158 = load i32, ptr %157, align 8
  br label %159

159:                                              ; preds = %156, %146
  %160 = phi i32 [ %158, %156 ], [ -1, %146 ]
  %161 = getelementptr inbounds %struct.drm_framebuffer, ptr %73, i32 0, i32 2
  %162 = load i32, ptr %161, align 4
  %163 = getelementptr inbounds %struct.drm_plane_state, ptr %26, i32 0, i32 20
  %164 = getelementptr inbounds %struct.drm_plane_state, ptr %26, i32 0, i32 20, i32 2
  %165 = load i32, ptr %164, align 4
  %166 = load i32, ptr %163, align 4
  %167 = sub i32 %165, %166
  %168 = ashr i32 %167, 16
  %169 = and i32 %167, 65535
  %170 = mul nuw nsw i32 %169, 15625
  %171 = lshr i32 %170, 10
  %172 = getelementptr inbounds %struct.drm_plane_state, ptr %26, i32 0, i32 20, i32 3
  %173 = load i32, ptr %172, align 4
  %174 = getelementptr inbounds %struct.drm_plane_state, ptr %26, i32 0, i32 20, i32 1
  %175 = load i32, ptr %174, align 4
  %176 = sub i32 %173, %175
  %177 = ashr i32 %176, 16
  %178 = and i32 %176, 65535
  %179 = mul nuw nsw i32 %178, 15625
  %180 = lshr i32 %179, 10
  %181 = ashr i32 %166, 16
  %182 = and i32 %166, 65535
  %183 = mul nuw nsw i32 %182, 15625
  %184 = lshr i32 %183, 10
  %185 = ashr i32 %175, 16
  %186 = and i32 %175, 65535
  %187 = mul nuw nsw i32 %186, 15625
  %188 = lshr i32 %187, 10
  %189 = getelementptr inbounds %struct.drm_crtc, ptr %71, i32 0, i32 5
  %190 = load i32, ptr %189, align 4
  %191 = getelementptr inbounds %struct.drm_plane_state, ptr %26, i32 0, i32 21
  %192 = getelementptr inbounds %struct.drm_plane_state, ptr %26, i32 0, i32 21, i32 2
  %193 = load i32, ptr %192, align 4
  %194 = load i32, ptr %191, align 4
  %195 = sub i32 %193, %194
  %196 = getelementptr inbounds %struct.drm_plane_state, ptr %26, i32 0, i32 21, i32 3
  %197 = load i32, ptr %196, align 4
  %198 = getelementptr inbounds %struct.drm_plane_state, ptr %26, i32 0, i32 21, i32 1
  %199 = load i32, ptr %198, align 4
  %200 = sub i32 %197, %199
  %201 = getelementptr inbounds %struct.dpu_format, ptr %74, i32 0, i32 11
  %202 = load i32, ptr %201, align 4
  %203 = icmp eq i32 %202, 2
  br i1 %203, label %204, label %209

204:                                              ; preds = %159
  %205 = getelementptr inbounds %struct.dpu_format, ptr %74, i32 0, i32 12
  %206 = load volatile i32, ptr %205, align 4
  %207 = and i32 %206, 4
  %208 = icmp ne i32 %207, 0
  br label %209

209:                                              ; preds = %204, %159
  %210 = phi i1 [ false, %159 ], [ %208, %204 ]
  %211 = zext i1 %210 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.41, i32 noundef %160, i32 noundef %162, i32 noundef %168, i32 noundef %171, i32 noundef %177, i32 noundef %180, i32 noundef %181, i32 noundef %184, i32 noundef %185, i32 noundef %188, i32 noundef %190, i32 noundef %195, i32 noundef %200, i32 noundef %194, i32 noundef %199, ptr noundef %74, i32 noundef %211) #12
  %212 = getelementptr inbounds %struct.dpu_hw_pipe_cfg, ptr %7, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %212, ptr noundef align 4 dereferenceable(16) %163, i32 16, i1 false) #12
  %213 = load i32, ptr %212, align 4
  %214 = ashr i32 %213, 16
  store i32 %214, ptr %212, align 4
  %215 = getelementptr inbounds %struct.dpu_hw_pipe_cfg, ptr %7, i32 0, i32 1, i32 2
  %216 = load i32, ptr %215, align 4
  %217 = ashr i32 %216, 16
  store i32 %217, ptr %215, align 4
  %218 = getelementptr inbounds %struct.dpu_hw_pipe_cfg, ptr %7, i32 0, i32 1, i32 1
  %219 = load i32, ptr %218, align 4
  %220 = ashr i32 %219, 16
  store i32 %220, ptr %218, align 4
  %221 = getelementptr inbounds %struct.dpu_hw_pipe_cfg, ptr %7, i32 0, i32 1, i32 3
  %222 = load i32, ptr %221, align 4
  %223 = ashr i32 %222, 16
  store i32 %223, ptr %221, align 4
  %224 = getelementptr inbounds %struct.dpu_hw_pipe_cfg, ptr %7, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %224, ptr noundef align 4 dereferenceable(16) %191, i32 16, i1 false) #12
  %225 = getelementptr inbounds %struct.dpu_plane, ptr %0, i32 0, i32 4
  %226 = load i32, ptr %225, align 4
  %227 = icmp sgt i32 %226, -1
  br i1 %227, label %228, label %772

228:                                              ; preds = %209
  %229 = load ptr, ptr %152, align 8
  %230 = getelementptr inbounds %struct.dpu_hw_pipe, ptr %229, i32 0, i32 6, i32 1
  %231 = load ptr, ptr %230, align 4
  %232 = icmp eq ptr %231, null
  br i1 %232, label %236, label %233

233:                                              ; preds = %228
  %234 = getelementptr inbounds %struct.dpu_plane_state, ptr %26, i32 0, i32 4
  %235 = load i32, ptr %234, align 8
  call void %231(ptr noundef %229, ptr noundef nonnull %7, i32 noundef %235) #12
  br label %236

236:                                              ; preds = %233, %228
  call fastcc void @_dpu_plane_setup_scaler(ptr noundef %0, ptr noundef %26, ptr noundef %74, ptr noundef nonnull %7) #12
  %237 = load ptr, ptr %152, align 8
  %238 = getelementptr inbounds %struct.dpu_hw_pipe, ptr %237, i32 0, i32 6, i32 6
  %239 = load ptr, ptr %238, align 4
  %240 = icmp eq ptr %239, null
  br i1 %240, label %247, label %241

241:                                              ; preds = %236
  %242 = getelementptr inbounds %struct.dpu_plane_state, ptr %26, i32 0, i32 4
  %243 = load i32, ptr %242, align 8
  %244 = getelementptr inbounds %struct.dpu_plane_state, ptr %26, i32 0, i32 5
  %245 = load i32, ptr %244, align 4
  call void %239(ptr noundef %237, i32 noundef %243, i32 noundef %245) #12
  %246 = load ptr, ptr %152, align 8
  br label %247

247:                                              ; preds = %241, %236
  %248 = phi ptr [ %246, %241 ], [ %237, %236 ]
  %249 = getelementptr inbounds %struct.dpu_hw_pipe, ptr %248, i32 0, i32 6
  %250 = load ptr, ptr %249, align 4
  %251 = icmp eq ptr %250, null
  br i1 %251, label %295, label %252

252:                                              ; preds = %247
  %253 = getelementptr inbounds %struct.drm_plane_state, ptr %26, i32 0, i32 14
  %254 = load i32, ptr %253, align 4
  %255 = call i32 @drm_rotation_simplify(i32 noundef %254, i32 noundef 49) #12
  %256 = lshr i32 %255, 4
  %257 = and i32 %256, 3
  %258 = load ptr, ptr %152, align 8
  %259 = getelementptr inbounds %struct.dpu_hw_pipe, ptr %258, i32 0, i32 6
  %260 = load ptr, ptr %259, align 4
  %261 = getelementptr inbounds %struct.dpu_plane_state, ptr %26, i32 0, i32 4
  %262 = load i32, ptr %261, align 8
  call void %260(ptr noundef %258, ptr noundef %74, i32 noundef %257, i32 noundef %262) #12
  %263 = load ptr, ptr %152, align 8
  %264 = getelementptr inbounds %struct.dpu_hw_pipe, ptr %263, i32 0, i32 6, i32 14
  %265 = load ptr, ptr %264, align 4
  %266 = icmp eq ptr %265, null
  br i1 %266, label %295, label %267

267:                                              ; preds = %252
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #12
  store i64 4294967296, ptr %8, align 8
  %268 = getelementptr inbounds %struct.dpu_plane, ptr %0, i32 0, i32 9
  %269 = load ptr, ptr %268, align 4
  %270 = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %269, i32 0, i32 23, i32 19
  %271 = load i8, ptr %270, align 4, !range !12
  store i8 %271, ptr %8, align 8
  %272 = load i32, ptr %201, align 4
  %273 = icmp eq i32 %272, 2
  br i1 %273, label %274, label %284

274:                                              ; preds = %267
  %275 = getelementptr inbounds %struct.dpu_format, ptr %74, i32 0, i32 12
  %276 = load volatile i32, ptr %275, align 4
  %277 = getelementptr inbounds %struct.dpu_hw_pipe_cdp_cfg, ptr %8, i32 0, i32 1
  %278 = trunc i32 %276 to i8
  %279 = lshr i8 %278, 2
  %280 = and i8 %279, 1
  store i8 %280, ptr %277, align 1
  %281 = load volatile i32, ptr %275, align 4
  %282 = and i32 %281, 4
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %286, label %290

284:                                              ; preds = %267
  %285 = getelementptr inbounds %struct.dpu_hw_pipe_cdp_cfg, ptr %8, i32 0, i32 1
  store i8 0, ptr %285, align 1
  br label %290

286:                                              ; preds = %274
  %287 = load volatile i32, ptr %275, align 4
  %288 = and i32 %287, 4
  %289 = icmp eq i32 %288, 0
  br label %290

290:                                              ; preds = %286, %284, %274
  %291 = phi i1 [ true, %274 ], [ false, %284 ], [ %289, %286 ]
  %292 = getelementptr inbounds %struct.dpu_hw_pipe_cdp_cfg, ptr %8, i32 0, i32 2
  %293 = zext i1 %291 to i8
  store i8 %293, ptr %292, align 2
  %294 = load i32, ptr %261, align 8
  call void %265(ptr noundef %263, ptr noundef nonnull %8, i32 noundef %294) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #12
  br label %295

295:                                              ; preds = %290, %252, %247
  %296 = load i8, ptr %141, align 1, !range !12
  %297 = icmp eq i8 %296, 0
  br i1 %297, label %402, label %298

298:                                              ; preds = %295
  %299 = getelementptr inbounds %struct.drm_framebuffer, ptr %73, i32 0, i32 4
  %300 = load ptr, ptr %299, align 8
  %301 = load i32, ptr %300, align 4
  %302 = getelementptr inbounds %struct.drm_framebuffer, ptr %73, i32 0, i32 8
  %303 = load i64, ptr %302, align 8
  %304 = call ptr @dpu_get_dpu_format_ext(i32 noundef %301, i64 noundef %303) #12
  %305 = load i32, ptr %215, align 4
  %306 = load i32, ptr %212, align 4
  %307 = sub i32 %305, %306
  %308 = icmp eq ptr %304, null
  br i1 %308, label %318, label %309

309:                                              ; preds = %298
  %310 = load ptr, ptr %25, align 4
  %311 = icmp ne ptr %310, null
  %312 = icmp ne i32 %307, 0
  %313 = and i1 %312, %311
  br i1 %313, label %314, label %318

314:                                              ; preds = %309
  %315 = getelementptr inbounds %struct.dpu_format, ptr %304, i32 0, i32 8
  %316 = load i8, ptr %315, align 1
  %317 = icmp eq i8 %316, 0
  br i1 %317, label %318, label %320

318:                                              ; preds = %314, %309, %298
  %319 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @__func__._dpu_plane_calc_fill_level, i32 noundef 232) #13
  br label %395

320:                                              ; preds = %314
  %321 = getelementptr inbounds %struct.dpu_plane, ptr %0, i32 0, i32 9
  %322 = load ptr, ptr %321, align 4
  %323 = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %322, i32 0, i32 1
  %324 = load ptr, ptr %323, align 4
  %325 = getelementptr inbounds %struct.dpu_caps, ptr %324, i32 0, i32 10
  %326 = load i32, ptr %325, align 4
  %327 = getelementptr inbounds %struct.dpu_plane, ptr %0, i32 0, i32 8
  %328 = load ptr, ptr %327, align 4
  %329 = icmp eq ptr %328, %327
  br i1 %329, label %360, label %330

330:                                              ; preds = %320
  %331 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 4
  br label %332

332:                                              ; preds = %356, %330
  %333 = phi ptr [ %328, %330 ], [ %358, %356 ]
  %334 = phi i32 [ %307, %330 ], [ %357, %356 ]
  %335 = getelementptr i8, ptr %333, i32 -72
  %336 = load ptr, ptr %335, align 4
  %337 = getelementptr inbounds %struct.drm_plane_state, ptr %336, i32 0, i32 22
  %338 = load i8, ptr %337, align 4, !range !12
  %339 = icmp eq i8 %338, 0
  br i1 %339, label %356, label %340

340:                                              ; preds = %332
  %341 = getelementptr inbounds %struct.drm_plane_state, ptr %336, i32 0, i32 20
  %342 = getelementptr inbounds %struct.drm_plane_state, ptr %336, i32 0, i32 20, i32 2
  %343 = load i32, ptr %342, align 4
  %344 = load i32, ptr %341, align 4
  %345 = sub i32 %343, %344
  %346 = ashr i32 %345, 16
  %347 = load i32, ptr @__drm_debug, align 4
  %348 = and i32 %347, 4
  %349 = icmp eq i32 %348, 0
  br i1 %349, label %354, label %350

350:                                              ; preds = %340
  %351 = load i32, ptr %331, align 8
  %352 = getelementptr i8, ptr %333, i32 -444
  %353 = load i32, ptr %352, align 8
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.45, i32 noundef %351, i32 noundef %353, i32 noundef %334, i32 noundef %346) #12
  br label %354

354:                                              ; preds = %350, %340
  %355 = call i32 @llvm.umax.i32(i32 %334, i32 %346) #12
  br label %356

356:                                              ; preds = %354, %332
  %357 = phi i32 [ %355, %354 ], [ %334, %332 ]
  %358 = load ptr, ptr %333, align 4
  %359 = icmp eq ptr %358, %327
  br i1 %359, label %360, label %332

360:                                              ; preds = %356, %320
  %361 = phi i32 [ %307, %320 ], [ %357, %356 ]
  %362 = getelementptr inbounds %struct.dpu_format, ptr %304, i32 0, i32 1
  %363 = load i32, ptr %362, align 4
  %364 = icmp eq i32 %363, 2
  br i1 %364, label %365, label %373

365:                                              ; preds = %360
  %366 = getelementptr inbounds %struct.dpu_format, ptr %304, i32 0, i32 4
  %367 = load i32, ptr %366, align 4
  %368 = icmp eq i32 %367, 3
  br i1 %368, label %369, label %371

369:                                              ; preds = %365
  %370 = lshr i32 %326, 1
  br label %381

371:                                              ; preds = %365
  %372 = and i32 %326, -2
  br label %381

373:                                              ; preds = %360
  %374 = getelementptr inbounds %struct.dpu_plane_state, ptr %310, i32 0, i32 5
  %375 = load i32, ptr %374, align 4
  %376 = icmp eq i32 %375, 1
  br i1 %376, label %377, label %379

377:                                              ; preds = %373
  %378 = and i32 %326, -2
  br label %381

379:                                              ; preds = %373
  %380 = shl i32 %326, 1
  br label %381

381:                                              ; preds = %379, %377, %371, %369
  %382 = phi i32 [ %378, %377 ], [ %380, %379 ], [ %370, %369 ], [ %372, %371 ]
  %383 = add i32 %361, 32
  %384 = load i8, ptr %315, align 1
  %385 = zext i8 %384 to i32
  %386 = mul i32 %383, %385
  %387 = udiv i32 %382, %386
  br i1 %16, label %391, label %388

388:                                              ; preds = %381
  %389 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 4
  %390 = load i32, ptr %389, align 8
  br label %391

391:                                              ; preds = %388, %381
  %392 = phi i32 [ %390, %388 ], [ -1, %381 ]
  %393 = load i32, ptr %148, align 4
  %394 = add i32 %393, -1
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.46, i32 noundef %392, i32 noundef %394, ptr noundef nonnull %304, i32 noundef %361, i32 noundef %387) #12
  br label %395

395:                                              ; preds = %391, %318
  %396 = phi i32 [ %387, %391 ], [ 0, %318 ]
  br i1 %308, label %401, label %397

397:                                              ; preds = %395
  %398 = getelementptr inbounds %struct.dpu_format, ptr %304, i32 0, i32 11
  %399 = load i32, ptr %398, align 4
  %400 = icmp eq i32 %399, 0
  br i1 %400, label %402, label %401

401:                                              ; preds = %397, %395
  br label %402

402:                                              ; preds = %401, %397, %295
  %403 = phi ptr [ %304, %401 ], [ null, %295 ], [ %304, %397 ]
  %404 = phi i32 [ %396, %401 ], [ 0, %295 ], [ %396, %397 ]
  %405 = phi i32 [ 1, %401 ], [ 2, %295 ], [ 0, %397 ]
  %406 = getelementptr inbounds %struct.dpu_plane, ptr %0, i32 0, i32 9
  %407 = load ptr, ptr %406, align 4
  %408 = getelementptr %struct.dpu_mdss_cfg, ptr %407, i32 0, i32 23, i32 18, i32 %405
  %409 = icmp eq ptr %408, null
  br i1 %409, label %434, label %410

410:                                              ; preds = %402
  %411 = load i32, ptr %408, align 4
  %412 = icmp eq i32 %411, 0
  br i1 %412, label %434, label %413

413:                                              ; preds = %410
  %414 = getelementptr %struct.dpu_mdss_cfg, ptr %407, i32 0, i32 23, i32 18, i32 %405, i32 1
  %415 = load ptr, ptr %414, align 4
  %416 = icmp eq ptr %415, null
  br i1 %416, label %434, label %417

417:                                              ; preds = %422, %413
  %418 = phi i32 [ %423, %422 ], [ 0, %413 ]
  %419 = getelementptr %struct.dpu_qos_lut_entry, ptr %415, i32 %418
  %420 = load i32, ptr %419, align 8
  %421 = icmp ult i32 %420, %404
  br i1 %421, label %422, label %430

422:                                              ; preds = %417
  %423 = add nuw i32 %418, 1
  %424 = icmp eq i32 %423, %411
  br i1 %424, label %425, label %417

425:                                              ; preds = %422
  %426 = add i32 %411, -1
  %427 = getelementptr %struct.dpu_qos_lut_entry, ptr %415, i32 %426
  %428 = load i32, ptr %427, align 8
  %429 = icmp eq i32 %428, 0
  br i1 %429, label %430, label %434

430:                                              ; preds = %425, %417
  %431 = phi i32 [ %426, %425 ], [ %418, %417 ]
  %432 = getelementptr %struct.dpu_qos_lut_entry, ptr %415, i32 %431, i32 1
  %433 = load i64, ptr %432, align 8
  br label %434

434:                                              ; preds = %430, %425, %413, %410, %402
  %435 = phi i64 [ 0, %413 ], [ 0, %410 ], [ 0, %402 ], [ 0, %425 ], [ %433, %430 ]
  %436 = load i32, ptr %148, align 4
  %437 = add i32 %436, -1
  %438 = icmp eq ptr %403, null
  br i1 %438, label %441, label %439

439:                                              ; preds = %434
  %440 = load i32, ptr %403, align 4
  br label %441

441:                                              ; preds = %439, %434
  %442 = phi i32 [ %440, %439 ], [ 0, %434 ]
  %443 = load i8, ptr %141, align 1, !range !12
  %444 = icmp ne i8 %443, 0
  %445 = trunc i64 %435 to i32
  %446 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_perf_set_qos_luts, i32 0, i32 1), align 4
  %447 = icmp sgt i32 %446, 0
  br i1 %447, label %448, label %461

448:                                              ; preds = %441
  %449 = tail call ptr @llvm.thread.pointer() #12
  %450 = getelementptr inbounds %struct.thread_info, ptr %449, i32 0, i32 2
  %451 = load i32, ptr %450, align 8
  %452 = lshr i32 %451, 5
  %453 = getelementptr i32, ptr @__cpu_online_mask, i32 %452
  %454 = load volatile i32, ptr %453, align 4
  %455 = and i32 %451, 31
  %456 = shl nuw i32 1, %455
  %457 = and i32 %456, %454
  %458 = icmp eq i32 %457, 0
  br i1 %458, label %461, label %459

459:                                              ; preds = %448
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !21
  %460 = call i32 @__traceiter_dpu_perf_set_qos_luts(ptr noundef null, i32 noundef %437, i32 noundef %442, i1 noundef zeroext %444, i32 noundef %404, i32 noundef %445, i32 noundef %405) #12
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !22
  br label %461

461:                                              ; preds = %459, %448, %441
  br i1 %16, label %465, label %462

462:                                              ; preds = %461
  %463 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 4
  %464 = load i32, ptr %463, align 8
  br label %465

465:                                              ; preds = %462, %461
  %466 = phi i32 [ %464, %462 ], [ -1, %461 ]
  %467 = load i32, ptr %148, align 4
  %468 = add i32 %467, -1
  %469 = load i8, ptr %141, align 1, !range !12
  %470 = zext i8 %469 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.43, i32 noundef %466, i32 noundef %468, ptr noundef %403, i32 noundef %470, i32 noundef %404, i64 noundef %435) #12
  %471 = load ptr, ptr %152, align 8
  %472 = getelementptr inbounds %struct.dpu_hw_pipe, ptr %471, i32 0, i32 6, i32 9
  %473 = load ptr, ptr %472, align 4
  call void %473(ptr noundef %471, i64 noundef %435) #12
  %474 = load i8, ptr %141, align 1, !range !12
  %475 = icmp eq i8 %474, 0
  br i1 %475, label %476, label %480

476:                                              ; preds = %465
  %477 = load ptr, ptr %406, align 4
  %478 = getelementptr %struct.dpu_mdss_cfg, ptr %477, i32 0, i32 23, i32 17, i32 2
  %479 = getelementptr %struct.dpu_mdss_cfg, ptr %477, i32 0, i32 23, i32 16, i32 2
  br label %504

480:                                              ; preds = %465
  %481 = getelementptr inbounds %struct.drm_framebuffer, ptr %73, i32 0, i32 4
  %482 = load ptr, ptr %481, align 8
  %483 = load i32, ptr %482, align 4
  %484 = getelementptr inbounds %struct.drm_framebuffer, ptr %73, i32 0, i32 8
  %485 = load i64, ptr %484, align 8
  %486 = call ptr @dpu_get_dpu_format_ext(i32 noundef %483, i64 noundef %485) #12
  %487 = icmp eq ptr %486, null
  br i1 %487, label %500, label %488

488:                                              ; preds = %480
  %489 = getelementptr inbounds %struct.dpu_format, ptr %486, i32 0, i32 11
  %490 = load i32, ptr %489, align 4
  %491 = icmp eq i32 %490, 0
  %492 = load ptr, ptr %406, align 4
  %493 = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %492, i32 0, i32 23, i32 17
  %494 = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %492, i32 0, i32 23, i32 16
  %495 = getelementptr %struct.dpu_mdss_cfg, ptr %492, i32 0, i32 23, i32 17, i32 1
  %496 = getelementptr %struct.dpu_mdss_cfg, ptr %492, i32 0, i32 23, i32 16, i32 1
  %497 = select i1 %491, ptr %494, ptr %496
  %498 = select i1 %491, ptr %493, ptr %495
  %499 = load i32, ptr %486, align 4
  br label %504

500:                                              ; preds = %480
  %501 = load ptr, ptr %406, align 4
  %502 = getelementptr %struct.dpu_mdss_cfg, ptr %501, i32 0, i32 23, i32 17, i32 1
  %503 = getelementptr %struct.dpu_mdss_cfg, ptr %501, i32 0, i32 23, i32 16, i32 1
  br label %504

504:                                              ; preds = %500, %488, %476
  %505 = phi i32 [ %499, %488 ], [ 0, %500 ], [ 0, %476 ]
  %506 = phi ptr [ %486, %488 ], [ null, %500 ], [ null, %476 ]
  %507 = phi ptr [ %497, %488 ], [ %503, %500 ], [ %479, %476 ]
  %508 = phi ptr [ %498, %488 ], [ %502, %500 ], [ %478, %476 ]
  %509 = phi i1 [ false, %488 ], [ true, %500 ], [ true, %476 ]
  %510 = phi i32 [ %490, %488 ], [ 0, %500 ], [ 0, %476 ]
  %511 = load i32, ptr %148, align 4
  %512 = add i32 %511, -1
  %513 = load i32, ptr %508, align 4
  %514 = load i32, ptr %507, align 4
  %515 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_perf_set_danger_luts, i32 0, i32 1), align 4
  %516 = icmp sgt i32 %515, 0
  br i1 %516, label %517, label %530

517:                                              ; preds = %504
  %518 = tail call ptr @llvm.thread.pointer() #12
  %519 = getelementptr inbounds %struct.thread_info, ptr %518, i32 0, i32 2
  %520 = load i32, ptr %519, align 8
  %521 = lshr i32 %520, 5
  %522 = getelementptr i32, ptr @__cpu_online_mask, i32 %521
  %523 = load volatile i32, ptr %522, align 4
  %524 = and i32 %520, 31
  %525 = shl nuw i32 1, %524
  %526 = and i32 %525, %523
  %527 = icmp eq i32 %526, 0
  br i1 %527, label %530, label %528

528:                                              ; preds = %517
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !23
  %529 = call i32 @__traceiter_dpu_perf_set_danger_luts(ptr noundef null, i32 noundef %512, i32 noundef %505, i32 noundef %510, i32 noundef %513, i32 noundef %514) #12
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !24
  br label %530

530:                                              ; preds = %528, %517, %504
  br i1 %16, label %534, label %531

531:                                              ; preds = %530
  %532 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 4
  %533 = load i32, ptr %532, align 8
  br label %534

534:                                              ; preds = %531, %530
  %535 = phi i32 [ %533, %531 ], [ -1, %530 ]
  %536 = load i32, ptr %148, align 4
  br i1 %509, label %540, label %537

537:                                              ; preds = %534
  %538 = getelementptr inbounds %struct.dpu_format, ptr %506, i32 0, i32 11
  %539 = load i32, ptr %538, align 4
  br label %540

540:                                              ; preds = %537, %534
  %541 = phi i32 [ %539, %537 ], [ -1, %534 ]
  %542 = add i32 %536, -1
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.47, i32 noundef %535, i32 noundef %542, ptr noundef %506, i32 noundef %541, i32 noundef %513, i32 noundef %514) #12
  %543 = load ptr, ptr %152, align 8
  %544 = getelementptr inbounds %struct.dpu_hw_pipe, ptr %543, i32 0, i32 6, i32 8
  %545 = load ptr, ptr %544, align 4
  call void %545(ptr noundef %543, i32 noundef %513, i32 noundef %514) #12
  %546 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 16
  %547 = load i32, ptr %546, align 8
  %548 = icmp eq i32 %547, 2
  br i1 %548, label %598, label %549

549:                                              ; preds = %540
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #12
  %550 = getelementptr inbounds %struct.dpu_hw_pipe_qos_cfg, ptr %5, i32 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %5, i8 0, i64 12, i1 false) #12
  %551 = load i8, ptr %141, align 1, !range !12
  store i8 %551, ptr %550, align 1
  br i1 %16, label %555, label %552

552:                                              ; preds = %549
  %553 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 4
  %554 = load i32, ptr %553, align 8
  br label %555

555:                                              ; preds = %552, %549
  %556 = phi i32 [ %554, %552 ], [ -1, %549 ]
  %557 = load i32, ptr %148, align 4
  %558 = add i32 %557, -1
  %559 = zext i8 %551 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.16, i32 noundef %556, i32 noundef %558, i32 noundef %559, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %559) #12
  %560 = load ptr, ptr %152, align 8
  %561 = getelementptr inbounds %struct.dpu_hw_pipe, ptr %560, i32 0, i32 6, i32 10
  %562 = load ptr, ptr %561, align 4
  call void %562(ptr noundef %560, ptr noundef nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #12
  %563 = load ptr, ptr %0, align 8
  %564 = getelementptr inbounds %struct.drm_device, ptr %563, i32 0, i32 5
  %565 = load ptr, ptr %564, align 4
  %566 = getelementptr inbounds %struct.msm_drm_private, ptr %565, i32 0, i32 1
  %567 = load ptr, ptr %566, align 4
  %568 = getelementptr inbounds i8, ptr %4, i32 20
  store i32 0, ptr %568, align 4
  %569 = load ptr, ptr %152, align 8
  %570 = getelementptr inbounds %struct.dpu_hw_pipe, ptr %569, i32 0, i32 5
  %571 = load ptr, ptr %570, align 4
  %572 = getelementptr inbounds %struct.dpu_sspp_cfg, ptr %571, i32 0, i32 6
  %573 = load i32, ptr %572, align 4
  store i32 %573, ptr %4, align 4
  %574 = getelementptr inbounds %struct.dpu_hw_pipe, ptr %569, i32 0, i32 4
  %575 = load i32, ptr %574, align 4
  %576 = getelementptr inbounds %struct.dpu_vbif_set_ot_params, ptr %4, i32 0, i32 1
  store i32 %575, ptr %576, align 4
  %577 = load i32, ptr %215, align 4
  %578 = load i32, ptr %212, align 4
  %579 = sub i32 %577, %578
  %580 = getelementptr inbounds %struct.dpu_vbif_set_ot_params, ptr %4, i32 0, i32 2
  store i32 %579, ptr %580, align 4
  %581 = load i32, ptr %221, align 4
  %582 = load i32, ptr %218, align 4
  %583 = sub i32 %581, %582
  %584 = getelementptr inbounds %struct.dpu_vbif_set_ot_params, ptr %4, i32 0, i32 3
  store i32 %583, ptr %584, align 4
  %585 = load i8, ptr %141, align 1, !range !12
  %586 = getelementptr inbounds %struct.dpu_vbif_set_ot_params, ptr %4, i32 0, i32 6
  %587 = xor i8 %585, 1
  store i8 %587, ptr %586, align 1
  %588 = getelementptr inbounds %struct.drm_crtc, ptr %71, i32 0, i32 12
  %589 = call i32 @drm_mode_vrefresh(ptr noundef %588) #12
  %590 = getelementptr inbounds %struct.dpu_vbif_set_ot_params, ptr %4, i32 0, i32 4
  store i32 %589, ptr %590, align 4
  %591 = getelementptr inbounds %struct.dpu_vbif_set_ot_params, ptr %4, i32 0, i32 7
  store i32 0, ptr %591, align 4
  %592 = load ptr, ptr %152, align 8
  %593 = getelementptr inbounds %struct.dpu_hw_pipe, ptr %592, i32 0, i32 5
  %594 = load ptr, ptr %593, align 4
  %595 = getelementptr inbounds %struct.dpu_sspp_cfg, ptr %594, i32 0, i32 7
  %596 = load i32, ptr %595, align 4
  %597 = getelementptr inbounds %struct.dpu_vbif_set_ot_params, ptr %4, i32 0, i32 8
  store i32 %596, ptr %597, align 4
  store i8 1, ptr %568, align 4
  call void @dpu_vbif_set_ot_limit(ptr noundef %567, ptr noundef nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #12
  br label %598

598:                                              ; preds = %555, %540
  %599 = load i8, ptr %141, align 1, !range !12
  %600 = icmp eq i8 %599, %140
  br i1 %600, label %601, label %605

601:                                              ; preds = %598
  %602 = getelementptr inbounds %struct.dpu_plane_state, ptr %26, i32 0, i32 3
  %603 = load i8, ptr %602, align 4, !range !12
  %604 = icmp eq i8 %603, 0
  br i1 %604, label %635, label %606

605:                                              ; preds = %598
  store i8 %140, ptr %141, align 1
  br label %608

606:                                              ; preds = %601
  store i8 0, ptr %602, align 4
  %607 = load i8, ptr %141, align 1, !range !12
  br label %608

608:                                              ; preds = %606, %605
  %609 = phi i8 [ %607, %606 ], [ %140, %605 ]
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #12
  %610 = load ptr, ptr %0, align 8
  %611 = getelementptr inbounds %struct.drm_device, ptr %610, i32 0, i32 5
  %612 = load ptr, ptr %611, align 4
  %613 = getelementptr inbounds %struct.msm_drm_private, ptr %612, i32 0, i32 1
  %614 = load ptr, ptr %613, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %3, i8 0, i64 20, i1 false) #12
  %615 = load ptr, ptr %152, align 8
  %616 = getelementptr inbounds %struct.dpu_hw_pipe, ptr %615, i32 0, i32 5
  %617 = load ptr, ptr %616, align 4
  %618 = getelementptr inbounds %struct.dpu_sspp_cfg, ptr %617, i32 0, i32 7
  %619 = load i32, ptr %618, align 4
  %620 = getelementptr inbounds %struct.dpu_vbif_set_qos_params, ptr %3, i32 0, i32 2
  store i32 %619, ptr %620, align 4
  %621 = getelementptr inbounds %struct.dpu_sspp_cfg, ptr %617, i32 0, i32 6
  %622 = load i32, ptr %621, align 4
  %623 = getelementptr inbounds %struct.dpu_vbif_set_qos_params, ptr %3, i32 0, i32 1
  store i32 %622, ptr %623, align 4
  %624 = getelementptr inbounds %struct.dpu_hw_pipe, ptr %615, i32 0, i32 4
  %625 = load i32, ptr %624, align 4
  %626 = add i32 %625, -1
  %627 = getelementptr inbounds %struct.dpu_vbif_set_qos_params, ptr %3, i32 0, i32 3
  store i32 %626, ptr %627, align 4
  %628 = getelementptr inbounds %struct.dpu_vbif_set_qos_params, ptr %3, i32 0, i32 4
  store i8 %609, ptr %628, align 4
  br i1 %16, label %632, label %629

629:                                              ; preds = %608
  %630 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 4
  %631 = load i32, ptr %630, align 8
  br label %632

632:                                              ; preds = %629, %608
  %633 = phi i32 [ %631, %629 ], [ -1, %608 ]
  %634 = zext i8 %609 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.48, i32 noundef %633, i32 noundef %626, i32 noundef 0, i32 noundef %622, i32 noundef %634, i32 noundef %619) #12
  call void @dpu_vbif_set_qos_remap(ptr noundef %614, ptr noundef nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #12
  br label %635

635:                                              ; preds = %632, %601
  %636 = load ptr, ptr %0, align 8
  %637 = getelementptr inbounds %struct.drm_device, ptr %636, i32 0, i32 5
  %638 = load ptr, ptr %637, align 4
  %639 = getelementptr inbounds %struct.msm_drm_private, ptr %638, i32 0, i32 1
  %640 = load ptr, ptr %639, align 4
  %641 = load ptr, ptr %25, align 4
  %642 = getelementptr inbounds %struct.drm_plane_state, ptr %641, i32 0, i32 1
  %643 = load ptr, ptr %642, align 4
  %644 = getelementptr inbounds %struct.drm_crtc, ptr %643, i32 0, i32 12
  %645 = getelementptr inbounds %struct.drm_framebuffer, ptr %73, i32 0, i32 4
  %646 = load ptr, ptr %645, align 8
  %647 = load i32, ptr %646, align 4
  %648 = getelementptr inbounds %struct.drm_framebuffer, ptr %73, i32 0, i32 8
  %649 = load i64, ptr %648, align 8
  %650 = call ptr @dpu_get_dpu_format_ext(i32 noundef %647, i64 noundef %649) #12
  %651 = load i32, ptr %215, align 4
  %652 = load i32, ptr %212, align 4
  %653 = sub i32 %651, %652
  %654 = load i32, ptr %221, align 4
  %655 = load i32, ptr %218, align 4
  %656 = sub i32 %654, %655
  %657 = getelementptr inbounds %struct.dpu_hw_pipe_cfg, ptr %7, i32 0, i32 2, i32 3
  %658 = load i32, ptr %657, align 4
  %659 = getelementptr inbounds %struct.dpu_hw_pipe_cfg, ptr %7, i32 0, i32 2, i32 1
  %660 = load i32, ptr %659, align 4
  %661 = sub i32 %658, %660
  %662 = call i32 @drm_mode_vrefresh(ptr noundef %644) #12
  %663 = getelementptr inbounds %struct.drm_crtc, ptr %643, i32 0, i32 12, i32 9
  %664 = load i16, ptr %663, align 4
  %665 = zext i16 %664 to i32
  %666 = getelementptr inbounds %struct.drm_crtc, ptr %643, i32 0, i32 12, i32 8
  %667 = load i16, ptr %666, align 2
  %668 = zext i16 %667 to i32
  %669 = sub nsw i32 %665, %668
  %670 = getelementptr inbounds %struct.drm_crtc, ptr %643, i32 0, i32 12, i32 7
  %671 = load i16, ptr %670, align 4
  %672 = zext i16 %671 to i32
  %673 = sub nsw i32 %668, %672
  %674 = getelementptr inbounds %struct.drm_crtc, ptr %643, i32 0, i32 12, i32 6
  %675 = load i16, ptr %674, align 2
  %676 = zext i16 %675 to i32
  %677 = sub nsw i32 %672, %676
  %678 = getelementptr inbounds %struct.dpu_kms, ptr %640, i32 0, i32 3
  %679 = load ptr, ptr %678, align 8
  %680 = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %679, i32 0, i32 23, i32 13
  %681 = load i32, ptr %680, align 4
  %682 = icmp sgt i32 %656, %661
  br i1 %682, label %683, label %685

683:                                              ; preds = %635
  %684 = sdiv i32 %656, %661
  br label %685

685:                                              ; preds = %683, %635
  %686 = phi i32 [ %684, %683 ], [ 1, %635 ]
  %687 = sext i32 %686 to i64
  %688 = getelementptr inbounds %struct.dpu_format, ptr %650, i32 0, i32 8
  %689 = load i8, ptr %688, align 1
  %690 = zext i8 %689 to i32
  %691 = mul i32 %662, %653
  %692 = mul i32 %691, %690
  %693 = mul i32 %692, %681
  %694 = zext i32 %693 to i64
  %695 = zext i16 %664 to i64
  %696 = mul nsw i64 %687, %695
  %697 = mul i64 %696, %694
  %698 = add nsw i32 %673, %669
  %699 = icmp ugt i32 %698, %681
  br i1 %699, label %700, label %709

700:                                              ; preds = %685
  %701 = icmp ult i64 %697, 4294967296
  br i1 %701, label %702, label %706, !prof !25

702:                                              ; preds = %700
  %703 = trunc i64 %697 to i32
  %704 = udiv i32 %703, %698
  %705 = zext i32 %704 to i64
  br label %729

706:                                              ; preds = %700
  %707 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %698, i64 %697) #15, !srcloc !26
  %708 = extractvalue { i64, i64 } %707, 1
  br label %729

709:                                              ; preds = %685
  %710 = add nsw i32 %698, %677
  %711 = icmp ult i32 %710, %681
  %712 = icmp ult i64 %697, 4294967296
  br i1 %711, label %713, label %721

713:                                              ; preds = %709
  br i1 %712, label %714, label %718, !prof !25

714:                                              ; preds = %713
  %715 = trunc i64 %697 to i32
  %716 = udiv i32 %715, %710
  %717 = zext i32 %716 to i64
  br label %729

718:                                              ; preds = %713
  %719 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %710, i64 %697) #15, !srcloc !26
  %720 = extractvalue { i64, i64 } %719, 1
  br label %729

721:                                              ; preds = %709
  br i1 %712, label %722, label %726, !prof !25

722:                                              ; preds = %721
  %723 = trunc i64 %697 to i32
  %724 = udiv i32 %723, %681
  %725 = zext i32 %724 to i64
  br label %729

726:                                              ; preds = %721
  %727 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %681, i64 %697) #15, !srcloc !26
  %728 = extractvalue { i64, i64 } %727, 1
  br label %729

729:                                              ; preds = %726, %722, %718, %714, %706, %702
  %730 = phi i64 [ %705, %702 ], [ %708, %706 ], [ %717, %714 ], [ %720, %718 ], [ %725, %722 ], [ %728, %726 ]
  %731 = mul i32 %692, %665
  %732 = sext i32 %731 to i64
  %733 = mul nsw i64 %732, %687
  %734 = call i64 @llvm.umax.i64(i64 %733, i64 %730) #12
  %735 = getelementptr inbounds %struct.dpu_plane_state, ptr %641, i32 0, i32 7
  store i64 %734, ptr %735, align 8
  %736 = load ptr, ptr %25, align 4
  %737 = getelementptr inbounds %struct.drm_plane_state, ptr %736, i32 0, i32 1
  %738 = load ptr, ptr %737, align 4
  %739 = getelementptr inbounds %struct.drm_crtc, ptr %738, i32 0, i32 12
  %740 = load i32, ptr %221, align 4
  %741 = load i32, ptr %218, align 4
  %742 = sub i32 %740, %741
  %743 = getelementptr inbounds %struct.dpu_hw_pipe_cfg, ptr %7, i32 0, i32 2, i32 2
  %744 = load i32, ptr %743, align 4
  %745 = load i32, ptr %224, align 4
  %746 = sub i32 %744, %745
  %747 = load i32, ptr %657, align 4
  %748 = load i32, ptr %659, align 4
  %749 = sub i32 %747, %748
  %750 = call i32 @drm_mode_vrefresh(ptr noundef %739) #12
  %751 = getelementptr inbounds %struct.drm_crtc, ptr %738, i32 0, i32 12, i32 9
  %752 = load i16, ptr %751, align 4
  %753 = zext i16 %752 to i32
  %754 = mul i32 %750, %746
  %755 = mul i32 %754, %753
  %756 = sext i32 %755 to i64
  %757 = getelementptr inbounds %struct.dpu_plane_state, ptr %736, i32 0, i32 8
  store i64 %756, ptr %757, align 8
  %758 = icmp sgt i32 %742, %749
  br i1 %758, label %759, label %772

759:                                              ; preds = %729
  %760 = sext i32 %742 to i64
  %761 = mul nsw i64 %756, %760
  %762 = icmp ult i64 %761, 4294967296
  br i1 %762, label %763, label %767, !prof !25

763:                                              ; preds = %759
  %764 = trunc i64 %761 to i32
  %765 = udiv i32 %764, %749
  %766 = zext i32 %765 to i64
  br label %770

767:                                              ; preds = %759
  %768 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %749, i64 %761) #15, !srcloc !26
  %769 = extractvalue { i64, i64 } %768, 1
  br label %770

770:                                              ; preds = %767, %763
  %771 = phi i64 [ %766, %763 ], [ %769, %767 ]
  store i64 %771, ptr %757, align 8
  br label %772

772:                                              ; preds = %770, %729, %209
  call void @llvm.lifetime.end.p0(i64 108, ptr nonnull %7) #12
  br label %773

773:                                              ; preds = %772, %68, %64, %60, %56, %54
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_plane_helper_prepare_fb(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_framebuffer_prepare(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpu_format_populate_layout(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_framebuffer_cleanup(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check_plane_state(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_rect_intersect(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_plane_disable(ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_rotation_simplify(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_plane_set_scanout(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_perf_set_qos_luts(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_perf_set_danger_luts(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_vrefresh(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpu_vbif_set_ot_limit(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpu_vbif_set_qos_remap(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #11

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind readnone }

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
!8 = !{!"auto-init"}
!9 = !{!10}
!10 = distinct !{!10, !11, !"drm_plane_state_dest: argument 0"}
!11 = distinct !{!11, !"drm_plane_state_dest"}
!12 = !{i8 0, i8 2}
!13 = !{!"branch_weights", i32 1, i32 2000}
!14 = !{!15}
!15 = distinct !{!15, !16, !"drm_plane_state_dest: argument 0"}
!16 = distinct !{!16, !"drm_plane_state_dest"}
!17 = !{i64 2156748365}
!18 = !{i64 2156748579}
!19 = !{i64 2156730491}
!20 = !{i64 2156730705}
!21 = !{i64 2155948228}
!22 = !{i64 2155948448}
!23 = !{i64 2155962367}
!24 = !{i64 2155962601}
!25 = !{!"branch_weights", i32 2000, i32 1}
!26 = !{i64 2148231431, i64 2148231711, i64 2148232045, i64 2148232379}
