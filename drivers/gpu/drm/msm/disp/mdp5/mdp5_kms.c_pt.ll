; ModuleID = '/llk/IR/drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mdp_kms_funcs = type { %struct.msm_kms_funcs, ptr }
%struct.msm_kms_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type {}
%struct.drm_info_list = type { ptr, ptr, i32, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.component_ops = type { ptr, ptr }
%struct.drm_private_state_funcs = type { ptr, ptr }
%struct.mdp5_kms = type { %struct.mdp_kms, ptr, ptr, i32, [13 x ptr], i32, [8 x ptr], i32, [5 x ptr], ptr, i32, %struct.drm_modeset_lock, %struct.drm_private_obj, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, i8, %struct.mdp_irq, i32 }
%struct.mdp_kms = type { %struct.msm_kms, ptr, i8, %struct.list_head, i32, i32 }
%struct.msm_kms = type { ptr, ptr, i32, ptr, ptr, %struct.kthread_work, %struct.mutex, [8 x %struct.mutex], i32, [8 x %struct.msm_pending_timer] }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.msm_pending_timer = type { %struct.msm_hrtimer_work, ptr, ptr, i32 }
%struct.msm_hrtimer_work = type { %struct.hrtimer, %struct.kthread_work, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.mdp_irq = type { %struct.list_head, i32, i8, ptr }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.69, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.80, ptr, i32, ptr, i8, i32 }
%struct.anon.69 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.80 = type { i32, ptr }
%struct.msm_drm_private = type { ptr, ptr, ptr, ptr, ptr, [2 x ptr], [3 x ptr], ptr, i8, i8, ptr, ptr, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, %struct.mutex, ptr, i32, [20 x ptr], i32, [8 x ptr], [8 x %struct.msm_drm_thread], i32, [8 x ptr], i32, [8 x ptr], i32, [8 x ptr], [3 x ptr], %struct.anon.83, %struct.notifier_block, %struct.shrinker, ptr, i32, i8 }
%struct.msm_drm_thread = type { ptr, i32, ptr }
%struct.anon.83 = type { i32, i32, %struct.drm_mm, %struct.spinlock }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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
%struct.mdp5_cfg_hw = type { ptr, %struct.mdp5_mdp_block, %struct.mdp5_smp_block, %struct.mdp5_ctl_block, %struct.mdp5_pipe_block, %struct.mdp5_pipe_block, %struct.mdp5_pipe_block, %struct.mdp5_pipe_block, %struct.mdp5_lm_block, %struct.mdp5_sub_block, %struct.mdp5_sub_block, %struct.mdp5_sub_block, %struct.mdp5_sub_block, %struct.mdp5_sub_block, %struct.mdp5_intf_block, %struct.mdp5_perf_block, i32 }
%struct.mdp5_mdp_block = type { i32, [8 x i32], i32 }
%struct.mdp5_smp_block = type { i32, i32, [32 x i32], [2 x i32], [32 x i8] }
%struct.mdp5_ctl_block = type { i32, [8 x i32], i32 }
%struct.mdp5_pipe_block = type { i32, [8 x i32], i32 }
%struct.mdp5_lm_block = type { i32, [8 x i32], [8 x %struct.mdp5_lm_instance], i32, i32, i32 }
%struct.mdp5_lm_instance = type { i32, i32, i32, i32 }
%struct.mdp5_sub_block = type { i32, [8 x i32] }
%struct.mdp5_intf_block = type { [8 x i32], [5 x i32] }
%struct.mdp5_perf_block = type { i32, i32, i32 }
%struct.mdp5_cfg = type { ptr, %struct.mdp5_cfg_platform }
%struct.mdp5_cfg_platform = type { ptr }
%struct.dev_iommu = type { %struct.mutex, ptr, ptr, ptr, ptr, ptr }
%struct.msm_mmu_funcs = type { ptr, ptr, ptr, ptr, ptr }
%struct.mdp5_interface = type { i32, i32, i32, i32 }
%struct.mdp5_hw_pipe = type { i32, ptr, i32, i32, i32, i32, i32 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.msm_gem_address_space = type { ptr, %struct.drm_mm, %struct.spinlock, ptr, %struct.kref, ptr }
%struct.mdp5_global_state = type { %struct.drm_private_state, ptr, ptr, %struct.mdp5_hw_pipe_state, %struct.mdp5_hw_mixer_state, %struct.mdp5_smp_state }
%struct.drm_private_state = type { ptr }
%struct.mdp5_hw_pipe_state = type { [13 x ptr] }
%struct.mdp5_hw_mixer_state = type { [8 x ptr] }
%struct.mdp5_smp_state = type { [2 x i32], [32 x [2 x i32]], i32, i32 }
%struct.drm_minor = type { i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.mutex }
%struct.drm_printer = type { ptr, ptr, ptr, ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@kms_funcs = internal constant %struct.mdp_kms_funcs { %struct.msm_kms_funcs { ptr @mdp5_hw_init, ptr @mdp5_irq_preinstall, ptr @mdp5_irq_postinstall, ptr @mdp5_irq_uninstall, ptr @mdp5_irq, ptr @mdp5_enable_vblank, ptr @mdp5_disable_vblank, ptr @mdp5_enable_commit, ptr @mdp5_disable_commit, ptr null, ptr @mdp5_prepare_commit, ptr @mdp5_flush_commit, ptr @mdp5_wait_flush, ptr @mdp5_complete_commit, ptr @mdp_get_format, ptr null, ptr @mdp5_round_pixclk, ptr @mdp5_set_split_display, ptr @mdp5_kms_destroy, ptr null, ptr @mdp5_kms_debugfs_init }, ptr @mdp5_set_irqmask }, align 4
@.str = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"*ERROR* failed to init kms\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"*ERROR* failed to get irq: %d\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"mdp5\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\016\00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"no iommu, fallback to phys contig buffers for scanout\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"*ERROR* modeset_init failed: %d\0A\00", align 1
@mdp5_dt_match = dso_local constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,mdp5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,mdss_mdp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@mdp5_driver = internal global %struct.platform_driver { ptr @mdp5_dev_probe, ptr @mdp5_dev_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.18, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mdp5_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mdp5_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@msm_kms_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"&kms->commit_lock[i]\00", align 1
@mdp5_debugfs_list = internal global [1 x %struct.drm_info_list] [%struct.drm_info_list { ptr @.str.9, ptr @smp_show, i32 0, ptr null }], align 4
@.str.9 = private unnamed_addr constant [4 x i8] c"smp\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"no SMP pool\0A\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.h\00", align 1
@mdp5_cfg = external dso_local local_unnamed_addr global ptr, align 4
@.str.12 = private unnamed_addr constant [43 x i8] c"*ERROR* failed to construct plane %d (%d)\0A\00", align 1
@.str.13 = private unnamed_addr constant [42 x i8] c"*ERROR* failed to construct crtc %d (%d)\0A\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"Skipping eDP interface %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [41 x i8] c"*ERROR* failed to find dsi from intf %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"*ERROR* unknown intf: %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [37 x i8] c"*ERROR* failed to construct encoder\0A\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"msm_mdp\00", align 1
@mdp5_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mdp5_runtime_suspend, ptr @mdp5_runtime_resume, ptr null }, align 4
@mdp5_ops = internal constant %struct.component_ops { ptr @mdp5_bind, ptr @mdp5_unbind }, align 4
@.str.19 = private unnamed_addr constant [9 x i8] c"mdp0-mem\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"mdp1-mem\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"rotator-mem\00", align 1
@.str.22 = private unnamed_addr constant [55 x i8] c"No interconnect support may cause display underflows!\0A\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"mdp_phys\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"MDP5\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"bus\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"iface\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"core\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"vsync\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"lut\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"tbu\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"tbu_rt\00", align 1
@mdp5_global_state_funcs = internal constant %struct.drm_private_state_funcs { ptr @mdp5_global_duplicate_state, ptr @mdp5_global_destroy_state }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.32 = private unnamed_addr constant [32 x i8] c"*ERROR* failed to get %s (%ld)\0A\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"skipping %s\0A\00", align 1
@.str.34 = private unnamed_addr constant [20 x i8] c"MDP5 version v%d.%d\00", align 1
@hwpipe_init.rgb_planes = internal unnamed_addr constant [4 x i32] [i32 4, i32 5, i32 6, i32 10], align 4
@hwpipe_init.vig_planes = internal unnamed_addr constant [4 x i32] [i32 1, i32 2, i32 3, i32 9], align 4
@hwpipe_init.dma_planes = internal unnamed_addr constant [2 x i32] [i32 7, i32 8], align 4
@hwpipe_init.cursor_planes = internal unnamed_addr constant [2 x i32] [i32 11, i32 12], align 4
@.str.35 = private unnamed_addr constant [46 x i8] c"*ERROR* failed to construct pipe for %s (%d)\0A\00", align 1
@pipe2name.names = internal unnamed_addr constant [13 x ptr] [ptr null, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47], align 4
@.str.36 = private unnamed_addr constant [5 x i8] c"VIG0\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"VIG1\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"VIG2\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"RGB0\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"RGB1\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"RGB2\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"DMA0\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"DMA1\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"VIG3\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"RGB3\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"CURSOR0\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"CURSOR1\00", align 1
@.str.48 = private unnamed_addr constant [39 x i8] c"*ERROR* failed to construct LM%d (%d)\0A\00", align 1
@.str.49 = private unnamed_addr constant [36 x i8] c"*ERROR* failed to construct INTF%d\0A\00", align 1
@.str.50 = private unnamed_addr constant [31 x i8] c"include/drm/drm_modeset_lock.h\00", align 1
@.str.51 = private unnamed_addr constant [41 x i8] c"drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.c\00", align 1

@__mod_of__mdp5_dt_match_device_table = dso_local alias [3 x %struct.of_device_id], ptr @mdp5_dt_match

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @mdp5_get_existing_global_state(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.mdp5_kms, ptr %0, i32 0, i32 12, i32 2
  %3 = load ptr, ptr %2, align 4
  ret ptr %3
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mdp5_get_global_state(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.drm_atomic_state, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.mdp5_kms, ptr %7, i32 0, i32 11
  %9 = getelementptr inbounds %struct.drm_atomic_state, ptr %0, i32 0, i32 9
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @drm_modeset_lock(ptr noundef %8, ptr noundef %10) #10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = inttoptr i32 %11 to ptr
  br label %18

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.mdp5_kms, ptr %7, i32 0, i32 12
  %17 = tail call ptr @drm_atomic_get_private_obj_state(ptr noundef %0, ptr noundef %16) #10
  br label %18

18:                                               ; preds = %15, %13
  %19 = phi ptr [ %14, %13 ], [ %17, %15 ]
  ret ptr %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_modeset_lock(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_private_obj_state(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mdp5_kms_init(ptr nocapture noundef %0) local_unnamed_addr #2 {
  %2 = alloca [8 x ptr], align 4
  %3 = alloca [8 x ptr], align 4
  %4 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %433, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.mdp5_kms, ptr %7, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.mdp_kms, ptr %7, i32 0, i32 1
  store ptr @kms_funcs, ptr %12, align 8
  %13 = getelementptr inbounds %struct.mdp_kms, ptr %7, i32 0, i32 3
  store volatile ptr %13, ptr %13, align 4
  %14 = getelementptr inbounds %struct.mdp_kms, ptr %7, i32 0, i32 3, i32 1
  store ptr %13, ptr %14, align 4
  %15 = getelementptr %struct.msm_kms, ptr %7, i32 0, i32 7, i32 0
  tail call void @__mutex_init(ptr noundef %15, ptr noundef nonnull @.str.8, ptr noundef nonnull @msm_kms_init.__key) #10
  %16 = getelementptr %struct.msm_kms, ptr %7, i32 0, i32 7, i32 1
  tail call void @__mutex_init(ptr noundef %16, ptr noundef nonnull @.str.8, ptr noundef nonnull @msm_kms_init.__key) #10
  %17 = getelementptr %struct.msm_kms, ptr %7, i32 0, i32 7, i32 2
  tail call void @__mutex_init(ptr noundef %17, ptr noundef nonnull @.str.8, ptr noundef nonnull @msm_kms_init.__key) #10
  %18 = getelementptr %struct.msm_kms, ptr %7, i32 0, i32 7, i32 3
  tail call void @__mutex_init(ptr noundef %18, ptr noundef nonnull @.str.8, ptr noundef nonnull @msm_kms_init.__key) #10
  %19 = getelementptr %struct.msm_kms, ptr %7, i32 0, i32 7, i32 4
  tail call void @__mutex_init(ptr noundef %19, ptr noundef nonnull @.str.8, ptr noundef nonnull @msm_kms_init.__key) #10
  %20 = getelementptr %struct.msm_kms, ptr %7, i32 0, i32 7, i32 5
  tail call void @__mutex_init(ptr noundef %20, ptr noundef nonnull @.str.8, ptr noundef nonnull @msm_kms_init.__key) #10
  %21 = getelementptr %struct.msm_kms, ptr %7, i32 0, i32 7, i32 6
  tail call void @__mutex_init(ptr noundef %21, ptr noundef nonnull @.str.8, ptr noundef nonnull @msm_kms_init.__key) #10
  %22 = getelementptr %struct.msm_kms, ptr %7, i32 0, i32 7, i32 7
  tail call void @__mutex_init(ptr noundef %22, ptr noundef nonnull @.str.8, ptr noundef nonnull @msm_kms_init.__key) #10
  store ptr @kms_funcs, ptr %7, align 8
  %23 = getelementptr %struct.msm_kms, ptr %7, i32 0, i32 9, i32 0
  %24 = tail call i32 @msm_atomic_init_pending_timer(ptr noundef %23, ptr noundef nonnull %7, i32 noundef 0) #10
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %54

26:                                               ; preds = %9
  %27 = getelementptr %struct.msm_kms, ptr %7, i32 0, i32 9, i32 1
  %28 = tail call i32 @msm_atomic_init_pending_timer(ptr noundef %27, ptr noundef nonnull %7, i32 noundef 1) #10
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %54

30:                                               ; preds = %26
  %31 = getelementptr %struct.msm_kms, ptr %7, i32 0, i32 9, i32 2
  %32 = tail call i32 @msm_atomic_init_pending_timer(ptr noundef %31, ptr noundef nonnull %7, i32 noundef 2) #10
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %54

34:                                               ; preds = %30
  %35 = getelementptr %struct.msm_kms, ptr %7, i32 0, i32 9, i32 3
  %36 = tail call i32 @msm_atomic_init_pending_timer(ptr noundef %35, ptr noundef nonnull %7, i32 noundef 3) #10
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %54

38:                                               ; preds = %34
  %39 = getelementptr %struct.msm_kms, ptr %7, i32 0, i32 9, i32 4
  %40 = tail call i32 @msm_atomic_init_pending_timer(ptr noundef %39, ptr noundef nonnull %7, i32 noundef 4) #10
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %38
  %43 = getelementptr %struct.msm_kms, ptr %7, i32 0, i32 9, i32 5
  %44 = tail call i32 @msm_atomic_init_pending_timer(ptr noundef %43, ptr noundef nonnull %7, i32 noundef 5) #10
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %42
  %47 = getelementptr %struct.msm_kms, ptr %7, i32 0, i32 9, i32 6
  %48 = tail call i32 @msm_atomic_init_pending_timer(ptr noundef %47, ptr noundef nonnull %7, i32 noundef 6) #10
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = getelementptr %struct.msm_kms, ptr %7, i32 0, i32 9, i32 7
  %52 = tail call i32 @msm_atomic_init_pending_timer(ptr noundef %51, ptr noundef nonnull %7, i32 noundef 7) #10
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %50, %46, %42, %38, %34, %30, %26, %9
  %55 = phi i32 [ %52, %50 ], [ %48, %46 ], [ %44, %42 ], [ %40, %38 ], [ %36, %34 ], [ %32, %30 ], [ %28, %26 ], [ %24, %9 ]
  %56 = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %56, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #10
  br label %430

57:                                               ; preds = %50
  %58 = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3
  %59 = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3, i32 25
  %60 = load ptr, ptr %59, align 8
  %61 = tail call i32 @irq_of_parse_and_map(ptr noundef %60, i32 noundef 0) #10
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %58, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef %61) #10
  br label %430

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.msm_kms, ptr %7, i32 0, i32 2
  store i32 %61, ptr %65, align 8
  %66 = getelementptr inbounds %struct.mdp5_kms, ptr %7, i32 0, i32 9
  %67 = load ptr, ptr %66, align 4
  %68 = tail call ptr @mdp5_cfg_get_config(ptr noundef %67) #10
  %69 = tail call i32 @__pm_runtime_resume(ptr noundef %58, i32 noundef 4) #10
  %70 = getelementptr inbounds %struct.mdp5_kms, ptr %7, i32 0, i32 26
  %71 = getelementptr inbounds %struct.mdp5_kms, ptr %7, i32 0, i32 15
  br label %72

72:                                               ; preds = %135, %64
  %73 = phi i32 [ 0, %64 ], [ %136, %135 ]
  %74 = load ptr, ptr %68, align 4
  %75 = getelementptr %struct.mdp5_cfg_hw, ptr %74, i32 0, i32 14, i32 1, i32 %73
  %76 = load i32, ptr %75, align 4
  %77 = icmp ugt i32 %76, 99
  br i1 %77, label %135, label %78

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %74, i32 0, i32 14
  %80 = getelementptr [8 x i32], ptr %79, i32 0, i32 %73
  %81 = load i32, ptr %80, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %135, label %83

83:                                               ; preds = %78
  switch i32 %73, label %99 [
    i32 0, label %84
    i32 1, label %87
    i32 2, label %90
    i32 3, label %93
    i32 4, label %96
  ]

84:                                               ; preds = %83
  %85 = load ptr, ptr @mdp5_cfg, align 4
  %86 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %85, i32 0, i32 14
  br label %100

87:                                               ; preds = %83
  %88 = load ptr, ptr @mdp5_cfg, align 4
  %89 = getelementptr %struct.mdp5_cfg_hw, ptr %88, i32 0, i32 14, i32 0, i32 1
  br label %100

90:                                               ; preds = %83
  %91 = load ptr, ptr @mdp5_cfg, align 4
  %92 = getelementptr %struct.mdp5_cfg_hw, ptr %91, i32 0, i32 14, i32 0, i32 2
  br label %100

93:                                               ; preds = %83
  %94 = load ptr, ptr @mdp5_cfg, align 4
  %95 = getelementptr %struct.mdp5_cfg_hw, ptr %94, i32 0, i32 14, i32 0, i32 3
  br label %100

96:                                               ; preds = %83
  %97 = load ptr, ptr @mdp5_cfg, align 4
  %98 = getelementptr %struct.mdp5_cfg_hw, ptr %97, i32 0, i32 14, i32 0, i32 4
  br label %100

99:                                               ; preds = %83
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1763, 0\0A.popsection", ""() #10, !srcloc !8
  unreachable

100:                                              ; preds = %96, %93, %90, %87, %84
  %101 = phi ptr [ %98, %96 ], [ %95, %93 ], [ %92, %90 ], [ %89, %87 ], [ %86, %84 ]
  %102 = load i32, ptr %101, align 4
  %103 = load i32, ptr %70, align 8
  %104 = icmp slt i32 %103, 1
  br i1 %104, label %105, label %106, !prof !9

105:                                              ; preds = %100
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 169, i32 noundef 9, ptr noundef null) #10
  br label %106

106:                                              ; preds = %105, %100
  %107 = load ptr, ptr %71, align 4
  %108 = getelementptr i8, ptr %107, i32 %102
  tail call void @msm_writel(i32 noundef 0, ptr noundef %108) #10
  switch i32 %73, label %124 [
    i32 0, label %109
    i32 1, label %112
    i32 2, label %115
    i32 3, label %118
    i32 4, label %121
  ]

109:                                              ; preds = %106
  %110 = load ptr, ptr @mdp5_cfg, align 4
  %111 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %110, i32 0, i32 14
  br label %125

112:                                              ; preds = %106
  %113 = load ptr, ptr @mdp5_cfg, align 4
  %114 = getelementptr %struct.mdp5_cfg_hw, ptr %113, i32 0, i32 14, i32 0, i32 1
  br label %125

115:                                              ; preds = %106
  %116 = load ptr, ptr @mdp5_cfg, align 4
  %117 = getelementptr %struct.mdp5_cfg_hw, ptr %116, i32 0, i32 14, i32 0, i32 2
  br label %125

118:                                              ; preds = %106
  %119 = load ptr, ptr @mdp5_cfg, align 4
  %120 = getelementptr %struct.mdp5_cfg_hw, ptr %119, i32 0, i32 14, i32 0, i32 3
  br label %125

121:                                              ; preds = %106
  %122 = load ptr, ptr @mdp5_cfg, align 4
  %123 = getelementptr %struct.mdp5_cfg_hw, ptr %122, i32 0, i32 14, i32 0, i32 4
  br label %125

124:                                              ; preds = %106
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1763, 0\0A.popsection", ""() #10, !srcloc !8
  unreachable

125:                                              ; preds = %121, %118, %115, %112, %109
  %126 = phi ptr [ %123, %121 ], [ %120, %118 ], [ %117, %115 ], [ %114, %112 ], [ %111, %109 ]
  %127 = load i32, ptr %126, align 4
  %128 = add i32 %127, 168
  %129 = load i32, ptr %70, align 8
  %130 = icmp slt i32 %129, 1
  br i1 %130, label %131, label %132, !prof !9

131:                                              ; preds = %125
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 169, i32 noundef 9, ptr noundef null) #10
  br label %132

132:                                              ; preds = %131, %125
  %133 = load ptr, ptr %71, align 4
  %134 = getelementptr i8, ptr %133, i32 %128
  tail call void @msm_writel(i32 noundef 3, ptr noundef %134) #10
  br label %135

135:                                              ; preds = %132, %78, %72
  %136 = add nuw nsw i32 %73, 1
  %137 = icmp eq i32 %136, 5
  br i1 %137, label %138, label %72

138:                                              ; preds = %135
  %139 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %139(i32 noundef 214748000) #10
  %140 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %140(i32 noundef 214748000) #10
  %141 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %141(i32 noundef 214748000) #10
  %142 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %142(i32 noundef 214748000) #10
  %143 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %143(i32 noundef 214748000) #10
  %144 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %144(i32 noundef 214748000) #10
  %145 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %145(i32 noundef 214748000) #10
  %146 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %146(i32 noundef 214748000) #10
  %147 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %147(i32 noundef 214748000) #10
  %148 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %148(i32 noundef 214748000) #10
  %149 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %149(i32 noundef 214748000) #10
  %150 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %150(i32 noundef 214748000) #10
  %151 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %151(i32 noundef 214748000) #10
  %152 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %152(i32 noundef 214748000) #10
  %153 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %153(i32 noundef 214748000) #10
  %154 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %154(i32 noundef 214748000) #10
  %155 = getelementptr inbounds %struct.mdp5_cfg, ptr %68, i32 0, i32 1
  %156 = load ptr, ptr %155, align 4
  %157 = icmp eq ptr %156, null
  br i1 %157, label %184, label %158

158:                                              ; preds = %138
  %159 = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3, i32 35
  %160 = load ptr, ptr %159, align 4
  %161 = icmp eq ptr %160, null
  br i1 %161, label %166, label %162

162:                                              ; preds = %158
  %163 = getelementptr inbounds %struct.dev_iommu, ptr %160, i32 0, i32 3
  %164 = load ptr, ptr %163, align 4
  %165 = icmp eq ptr %164, null
  br i1 %165, label %166, label %169

166:                                              ; preds = %162, %158
  %167 = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3, i32 1
  %168 = load ptr, ptr %167, align 4
  br label %169

169:                                              ; preds = %166, %162
  %170 = phi ptr [ %58, %162 ], [ %168, %166 ]
  %171 = tail call ptr @msm_iommu_new(ptr noundef %170, ptr noundef nonnull %156) #10
  %172 = tail call ptr @msm_gem_address_space_create(ptr noundef %171, ptr noundef nonnull @.str.3, i64 noundef 4096, i64 noundef 4294963200) #10
  %173 = icmp ugt ptr %172, inttoptr (i32 -4096 to ptr)
  br i1 %173, label %174, label %180

174:                                              ; preds = %169
  %175 = icmp ugt ptr %171, inttoptr (i32 -4096 to ptr)
  br i1 %175, label %182, label %176

176:                                              ; preds = %174
  %177 = load ptr, ptr %171, align 4
  %178 = getelementptr inbounds %struct.msm_mmu_funcs, ptr %177, i32 0, i32 3
  %179 = load ptr, ptr %178, align 4
  tail call void %179(ptr noundef %171) #10
  br label %182

180:                                              ; preds = %169
  %181 = getelementptr inbounds %struct.msm_kms, ptr %7, i32 0, i32 3
  store ptr %172, ptr %181, align 4
  br label %185

182:                                              ; preds = %176, %174
  %183 = ptrtoint ptr %172 to i32
  br label %430

184:                                              ; preds = %138
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %58, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #10
  br label %185

185:                                              ; preds = %184, %180
  %186 = tail call i32 @__pm_runtime_idle(ptr noundef %58, i32 noundef 4) #10
  %187 = getelementptr inbounds %struct.mdp5_kms, ptr %7, i32 0, i32 1
  %188 = load ptr, ptr %187, align 8
  %189 = getelementptr inbounds %struct.drm_device, ptr %188, i32 0, i32 5
  %190 = load ptr, ptr %189, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %2, i8 0, i32 32, i1 false) #10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %3, i8 0, i32 32, i1 false) #10
  %191 = getelementptr inbounds %struct.mdp5_kms, ptr %7, i32 0, i32 7
  %192 = load i32, ptr %191, align 4
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %329, label %194

194:                                              ; preds = %185
  %195 = getelementptr inbounds %struct.mdp5_kms, ptr %7, i32 0, i32 14
  br label %196

196:                                              ; preds = %325, %194
  %197 = phi ptr [ %190, %194 ], [ %328, %325 ]
  %198 = phi ptr [ %188, %194 ], [ %326, %325 ]
  %199 = phi i32 [ 0, %194 ], [ %322, %325 ]
  %200 = getelementptr %struct.mdp5_kms, ptr %7, i32 0, i32 8, i32 %199
  %201 = load ptr, ptr %200, align 4
  %202 = load ptr, ptr %195, align 8
  %203 = getelementptr inbounds %struct.mdp5_interface, ptr %201, i32 0, i32 2
  %204 = load i32, ptr %203, align 4
  switch i32 %204, label %315 [
    i32 9, label %205
    i32 3, label %210
    i32 1, label %236
  ]

205:                                              ; preds = %196
  %206 = getelementptr inbounds %struct.drm_device, ptr %198, i32 0, i32 2
  %207 = load ptr, ptr %206, align 4
  %208 = getelementptr inbounds %struct.mdp5_interface, ptr %201, i32 0, i32 1
  %209 = load i32, ptr %208, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %207, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.14, i32 noundef %209) #10
  br label %321

210:                                              ; preds = %196
  %211 = getelementptr inbounds %struct.msm_drm_private, ptr %197, i32 0, i32 4
  %212 = load ptr, ptr %211, align 8
  %213 = icmp eq ptr %212, null
  br i1 %213, label %321, label %214

214:                                              ; preds = %210
  %215 = getelementptr inbounds %struct.mdp5_interface, ptr %201, i32 0, i32 1
  %216 = load i32, ptr %215, align 4
  %217 = tail call ptr @mdp5_ctlm_request(ptr noundef %202, i32 noundef %216) #10
  %218 = icmp eq ptr %217, null
  br i1 %218, label %417, label %219

219:                                              ; preds = %214
  %220 = load ptr, ptr %187, align 8
  %221 = getelementptr inbounds %struct.drm_device, ptr %220, i32 0, i32 5
  %222 = load ptr, ptr %221, align 4
  %223 = tail call ptr @mdp5_encoder_init(ptr noundef %220, ptr noundef %201, ptr noundef nonnull %217) #10
  %224 = icmp ugt ptr %223, inttoptr (i32 -4096 to ptr)
  br i1 %224, label %225, label %229

225:                                              ; preds = %219
  %226 = getelementptr inbounds %struct.drm_device, ptr %220, i32 0, i32 2
  %227 = load ptr, ptr %226, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %227, ptr noundef nonnull @.str, ptr noundef nonnull @.str.17) #10
  %228 = ptrtoint ptr %223 to i32
  br label %318

229:                                              ; preds = %219
  %230 = getelementptr inbounds %struct.msm_drm_private, ptr %222, i32 0, i32 28
  %231 = load i32, ptr %230, align 4
  %232 = add i32 %231, 1
  store i32 %232, ptr %230, align 4
  %233 = getelementptr %struct.msm_drm_private, ptr %222, i32 0, i32 29, i32 %231
  store ptr %223, ptr %233, align 4
  %234 = load ptr, ptr %211, align 8
  %235 = tail call i32 @msm_hdmi_modeset_init(ptr noundef %234, ptr noundef %198, ptr noundef %223) #10
  br label %318

236:                                              ; preds = %196
  %237 = load ptr, ptr %66, align 4
  %238 = tail call ptr @mdp5_cfg_get_hw_config(ptr noundef %237) #10
  %239 = getelementptr inbounds %struct.mdp5_interface, ptr %201, i32 0, i32 1
  %240 = load i32, ptr %239, align 4
  %241 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %238, i32 0, i32 14, i32 1
  %242 = load i32, ptr %241, align 4
  %243 = icmp eq i32 %242, 1
  br i1 %243, label %244, label %246

244:                                              ; preds = %236
  %245 = icmp eq i32 %240, 0
  br i1 %245, label %286, label %246

246:                                              ; preds = %244, %236
  %247 = phi i32 [ 0, %236 ], [ 1, %244 ]
  %248 = getelementptr %struct.mdp5_cfg_hw, ptr %238, i32 0, i32 14, i32 1, i32 1
  %249 = load i32, ptr %248, align 4
  %250 = icmp eq i32 %249, 1
  br i1 %250, label %251, label %255

251:                                              ; preds = %246
  %252 = icmp eq i32 %240, 1
  br i1 %252, label %286, label %253

253:                                              ; preds = %251
  %254 = add nuw nsw i32 %247, 1
  br label %255

255:                                              ; preds = %253, %246
  %256 = phi i32 [ %254, %253 ], [ %247, %246 ]
  %257 = getelementptr %struct.mdp5_cfg_hw, ptr %238, i32 0, i32 14, i32 1, i32 2
  %258 = load i32, ptr %257, align 4
  %259 = icmp eq i32 %258, 1
  br i1 %259, label %260, label %264

260:                                              ; preds = %255
  %261 = icmp eq i32 %240, 2
  br i1 %261, label %280, label %262

262:                                              ; preds = %260
  %263 = add nuw nsw i32 %256, 1
  br label %264

264:                                              ; preds = %262, %255
  %265 = phi i32 [ %263, %262 ], [ %256, %255 ]
  %266 = getelementptr %struct.mdp5_cfg_hw, ptr %238, i32 0, i32 14, i32 1, i32 3
  %267 = load i32, ptr %266, align 4
  %268 = icmp eq i32 %267, 1
  br i1 %268, label %269, label %273

269:                                              ; preds = %264
  %270 = icmp eq i32 %240, 3
  br i1 %270, label %280, label %271

271:                                              ; preds = %269
  %272 = add nuw nsw i32 %265, 1
  br label %273

273:                                              ; preds = %271, %264
  %274 = phi i32 [ %272, %271 ], [ %265, %264 ]
  %275 = getelementptr %struct.mdp5_cfg_hw, ptr %238, i32 0, i32 14, i32 1, i32 4
  %276 = load i32, ptr %275, align 4
  %277 = icmp eq i32 %276, 1
  %278 = icmp eq i32 %240, 4
  %279 = and i1 %278, %277
  br i1 %279, label %280, label %283

280:                                              ; preds = %273, %269, %260
  %281 = phi i32 [ %256, %260 ], [ %265, %269 ], [ %274, %273 ]
  %282 = icmp ugt i32 %281, 1
  br i1 %282, label %283, label %286

283:                                              ; preds = %280, %273
  %284 = getelementptr inbounds %struct.drm_device, ptr %198, i32 0, i32 2
  %285 = load ptr, ptr %284, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %285, ptr noundef nonnull @.str, ptr noundef nonnull @.str.15, i32 noundef %240) #10
  br label %417

286:                                              ; preds = %280, %251, %244
  %287 = phi i32 [ %281, %280 ], [ %247, %251 ], [ 0, %244 ]
  %288 = getelementptr %struct.msm_drm_private, ptr %197, i32 0, i32 5, i32 %287
  %289 = load ptr, ptr %288, align 4
  %290 = icmp eq ptr %289, null
  br i1 %290, label %321, label %291

291:                                              ; preds = %286
  %292 = tail call ptr @mdp5_ctlm_request(ptr noundef %202, i32 noundef %240) #10
  %293 = icmp eq ptr %292, null
  br i1 %293, label %417, label %294

294:                                              ; preds = %291
  %295 = load ptr, ptr %187, align 8
  %296 = getelementptr inbounds %struct.drm_device, ptr %295, i32 0, i32 5
  %297 = load ptr, ptr %296, align 4
  %298 = tail call ptr @mdp5_encoder_init(ptr noundef %295, ptr noundef %201, ptr noundef nonnull %292) #10
  %299 = icmp ugt ptr %298, inttoptr (i32 -4096 to ptr)
  br i1 %299, label %300, label %304

300:                                              ; preds = %294
  %301 = getelementptr inbounds %struct.drm_device, ptr %295, i32 0, i32 2
  %302 = load ptr, ptr %301, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %302, ptr noundef nonnull @.str, ptr noundef nonnull @.str.17) #10
  %303 = ptrtoint ptr %298 to i32
  br label %318

304:                                              ; preds = %294
  %305 = getelementptr inbounds %struct.msm_drm_private, ptr %297, i32 0, i32 28
  %306 = load i32, ptr %305, align 4
  %307 = add i32 %306, 1
  store i32 %307, ptr %305, align 4
  %308 = getelementptr %struct.msm_drm_private, ptr %297, i32 0, i32 29, i32 %306
  store ptr %298, ptr %308, align 4
  %309 = load ptr, ptr %288, align 4
  %310 = tail call i32 @msm_dsi_modeset_init(ptr noundef %309, ptr noundef %198, ptr noundef %298) #10
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %312, label %417

312:                                              ; preds = %304
  %313 = load ptr, ptr %288, align 4
  %314 = tail call zeroext i1 @msm_dsi_is_cmd_mode(ptr noundef %313) #10
  tail call void @mdp5_encoder_set_intf_mode(ptr noundef %298, i1 noundef zeroext %314) #10
  br label %321

315:                                              ; preds = %196
  %316 = getelementptr inbounds %struct.drm_device, ptr %198, i32 0, i32 2
  %317 = load ptr, ptr %316, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %317, ptr noundef nonnull @.str, ptr noundef nonnull @.str.16, i32 noundef %204) #10
  br label %417

318:                                              ; preds = %300, %229, %225
  %319 = phi i32 [ %228, %225 ], [ %235, %229 ], [ %303, %300 ]
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %321, label %417

321:                                              ; preds = %318, %312, %286, %210, %205
  %322 = add nuw i32 %199, 1
  %323 = load i32, ptr %191, align 4
  %324 = icmp ult i32 %322, %323
  br i1 %324, label %325, label %329

325:                                              ; preds = %321
  %326 = load ptr, ptr %187, align 8
  %327 = getelementptr inbounds %struct.drm_device, ptr %326, i32 0, i32 5
  %328 = load ptr, ptr %327, align 4
  br label %196

329:                                              ; preds = %321, %185
  %330 = getelementptr inbounds %struct.msm_drm_private, ptr %190, i32 0, i32 28
  %331 = load i32, ptr %330, align 4
  %332 = getelementptr inbounds %struct.mdp5_kms, ptr %7, i32 0, i32 5
  %333 = load i32, ptr %332, align 8
  %334 = tail call i32 @llvm.umin.i32(i32 %331, i32 %333) #10
  %335 = getelementptr inbounds %struct.mdp5_kms, ptr %7, i32 0, i32 3
  %336 = load i32, ptr %335, align 8
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %340, label %338

338:                                              ; preds = %329
  %339 = getelementptr inbounds %struct.msm_drm_private, ptr %190, i32 0, i32 23
  br label %344

340:                                              ; preds = %378, %329
  %341 = icmp eq i32 %334, 0
  br i1 %341, label %383, label %342

342:                                              ; preds = %340
  %343 = getelementptr inbounds %struct.msm_drm_private, ptr %190, i32 0, i32 25
  br label %388

344:                                              ; preds = %378, %338
  %345 = phi i32 [ 0, %338 ], [ %379, %378 ]
  %346 = phi i32 [ 0, %338 ], [ %370, %378 ]
  %347 = phi i32 [ 0, %338 ], [ %380, %378 ]
  %348 = icmp ult i32 %347, %334
  br i1 %348, label %357, label %349

349:                                              ; preds = %344
  %350 = getelementptr %struct.mdp5_kms, ptr %7, i32 0, i32 4, i32 %347
  %351 = load ptr, ptr %350, align 4
  %352 = getelementptr inbounds %struct.mdp5_hw_pipe, ptr %351, i32 0, i32 4
  %353 = load i32, ptr %352, align 4
  %354 = and i32 %353, 64
  %355 = icmp ne i32 %354, 0
  %356 = lshr exact i32 %354, 5
  br label %357

357:                                              ; preds = %349, %344
  %358 = phi i1 [ false, %344 ], [ %355, %349 ]
  %359 = phi i32 [ 1, %344 ], [ %356, %349 ]
  %360 = tail call ptr @mdp5_plane_init(ptr noundef %188, i32 noundef %359) #10
  %361 = icmp ugt ptr %360, inttoptr (i32 -4096 to ptr)
  br i1 %361, label %374, label %362

362:                                              ; preds = %357
  %363 = load i32, ptr %339, align 4
  %364 = add i32 %363, 1
  store i32 %364, ptr %339, align 4
  %365 = getelementptr %struct.msm_drm_private, ptr %190, i32 0, i32 24, i32 %363
  store ptr %360, ptr %365, align 4
  br i1 %348, label %366, label %369

366:                                              ; preds = %362
  %367 = add i32 %346, 1
  %368 = getelementptr [8 x ptr], ptr %2, i32 0, i32 %346
  store ptr %360, ptr %368, align 4
  br label %369

369:                                              ; preds = %366, %362
  %370 = phi i32 [ %367, %366 ], [ %346, %362 ]
  br i1 %358, label %371, label %378

371:                                              ; preds = %369
  %372 = add i32 %345, 1
  %373 = getelementptr [8 x ptr], ptr %3, i32 0, i32 %345
  store ptr %360, ptr %373, align 4
  br label %378

374:                                              ; preds = %357
  %375 = ptrtoint ptr %360 to i32
  %376 = getelementptr inbounds %struct.drm_device, ptr %188, i32 0, i32 2
  %377 = load ptr, ptr %376, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %377, ptr noundef nonnull @.str, ptr noundef nonnull @.str.12, i32 noundef %347, i32 noundef %375) #10
  br label %426

378:                                              ; preds = %371, %369
  %379 = phi i32 [ %345, %369 ], [ %372, %371 ]
  %380 = add nuw i32 %347, 1
  %381 = load i32, ptr %335, align 8
  %382 = icmp ult i32 %380, %381
  br i1 %382, label %344, label %340

383:                                              ; preds = %400, %340
  %384 = load i32, ptr %330, align 4
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %419, label %386

386:                                              ; preds = %383
  %387 = getelementptr inbounds %struct.msm_drm_private, ptr %190, i32 0, i32 25
  br label %406

388:                                              ; preds = %400, %342
  %389 = phi i32 [ 0, %342 ], [ %404, %400 ]
  %390 = getelementptr [8 x ptr], ptr %2, i32 0, i32 %389
  %391 = load ptr, ptr %390, align 4
  %392 = getelementptr [8 x ptr], ptr %3, i32 0, i32 %389
  %393 = load ptr, ptr %392, align 4
  %394 = tail call ptr @mdp5_crtc_init(ptr noundef %188, ptr noundef %391, ptr noundef %393, i32 noundef %389) #10
  %395 = icmp ugt ptr %394, inttoptr (i32 -4096 to ptr)
  br i1 %395, label %396, label %400

396:                                              ; preds = %388
  %397 = ptrtoint ptr %394 to i32
  %398 = getelementptr inbounds %struct.drm_device, ptr %188, i32 0, i32 2
  %399 = load ptr, ptr %398, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %399, ptr noundef nonnull @.str, ptr noundef nonnull @.str.13, i32 noundef %389, i32 noundef %397) #10
  br label %426

400:                                              ; preds = %388
  %401 = load i32, ptr %343, align 8
  %402 = add i32 %401, 1
  store i32 %402, ptr %343, align 8
  %403 = getelementptr %struct.msm_drm_private, ptr %190, i32 0, i32 26, i32 %401
  store ptr %394, ptr %403, align 4
  %404 = add nuw i32 %389, 1
  %405 = icmp eq i32 %404, %334
  br i1 %405, label %383, label %388

406:                                              ; preds = %406, %386
  %407 = phi i32 [ 0, %386 ], [ %414, %406 ]
  %408 = getelementptr %struct.msm_drm_private, ptr %190, i32 0, i32 29, i32 %407
  %409 = load ptr, ptr %408, align 4
  %410 = load i32, ptr %387, align 8
  %411 = shl nsw i32 -1, %410
  %412 = xor i32 %411, -1
  %413 = getelementptr inbounds %struct.drm_encoder, ptr %409, i32 0, i32 6
  store i32 %412, ptr %413, align 4
  %414 = add nuw i32 %407, 1
  %415 = load i32, ptr %330, align 4
  %416 = icmp ult i32 %414, %415
  br i1 %416, label %406, label %419

417:                                              ; preds = %318, %315, %304, %291, %283, %214
  %418 = phi i32 [ -22, %315 ], [ -22, %283 ], [ -22, %214 ], [ -22, %291 ], [ %310, %304 ], [ %319, %318 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #10
  br label %428

419:                                              ; preds = %406, %383
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #10
  %420 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 23
  store i32 0, ptr %420, align 4
  %421 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 24
  store i32 0, ptr %421, align 4
  %422 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 25
  store i32 65535, ptr %422, align 4
  %423 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 26
  store i32 65535, ptr %423, align 4
  %424 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 26
  store i32 0, ptr %424, align 4
  %425 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 22
  store i8 1, ptr %425, align 4
  br label %433

426:                                              ; preds = %396, %374
  %427 = phi i32 [ %375, %374 ], [ %397, %396 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #10
  br label %428

428:                                              ; preds = %426, %417
  %429 = phi i32 [ %418, %417 ], [ %427, %426 ]
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %58, ptr noundef nonnull @.str, ptr noundef nonnull @.str.6, i32 noundef %429) #10
  br label %430

430:                                              ; preds = %428, %182, %63, %54
  %431 = phi i32 [ %55, %54 ], [ %61, %63 ], [ %183, %182 ], [ %429, %428 ]
  tail call void @mdp5_kms_destroy(ptr noundef nonnull %7)
  %432 = inttoptr i32 %431 to ptr
  br label %433

433:                                              ; preds = %430, %419, %1
  %434 = phi ptr [ %432, %430 ], [ %7, %419 ], [ null, %1 ]
  ret ptr %434
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdp5_cfg_get_config(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_iommu_new(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_gem_address_space_create(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mdp5_kms_destroy(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.msm_kms, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.mdp5_kms, ptr %0, i32 0, i32 5
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %11, %1
  %8 = getelementptr inbounds %struct.mdp5_kms, ptr %0, i32 0, i32 3
  %9 = load i32, ptr %8, align 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %25, label %18

11:                                               ; preds = %11, %1
  %12 = phi i32 [ %15, %11 ], [ 0, %1 ]
  %13 = getelementptr %struct.mdp5_kms, ptr %0, i32 0, i32 6, i32 %12
  %14 = load ptr, ptr %13, align 4
  tail call void @mdp5_mixer_destroy(ptr noundef %14) #10
  %15 = add nuw i32 %12, 1
  %16 = load i32, ptr %4, align 8
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %11, label %7

18:                                               ; preds = %18, %7
  %19 = phi i32 [ %22, %18 ], [ 0, %7 ]
  %20 = getelementptr %struct.mdp5_kms, ptr %0, i32 0, i32 4, i32 %19
  %21 = load ptr, ptr %20, align 4
  tail call void @mdp5_pipe_destroy(ptr noundef %21) #10
  %22 = add nuw i32 %19, 1
  %23 = load i32, ptr %8, align 8
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %18, label %25

25:                                               ; preds = %18, %7
  %26 = icmp eq ptr %3, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.msm_gem_address_space, ptr %3, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = load ptr, ptr %29, align 4
  %31 = load ptr, ptr %30, align 4
  tail call void %31(ptr noundef %29) #10
  tail call void @msm_gem_address_space_put(ptr noundef nonnull %3) #10
  br label %32

32:                                               ; preds = %27, %25
  %33 = getelementptr %struct.msm_kms, ptr %0, i32 0, i32 9, i32 0
  tail call void @msm_atomic_destroy_pending_timer(ptr noundef %33) #10
  %34 = getelementptr %struct.msm_kms, ptr %0, i32 0, i32 9, i32 1
  tail call void @msm_atomic_destroy_pending_timer(ptr noundef %34) #10
  %35 = getelementptr %struct.msm_kms, ptr %0, i32 0, i32 9, i32 2
  tail call void @msm_atomic_destroy_pending_timer(ptr noundef %35) #10
  %36 = getelementptr %struct.msm_kms, ptr %0, i32 0, i32 9, i32 3
  tail call void @msm_atomic_destroy_pending_timer(ptr noundef %36) #10
  %37 = getelementptr %struct.msm_kms, ptr %0, i32 0, i32 9, i32 4
  tail call void @msm_atomic_destroy_pending_timer(ptr noundef %37) #10
  %38 = getelementptr %struct.msm_kms, ptr %0, i32 0, i32 9, i32 5
  tail call void @msm_atomic_destroy_pending_timer(ptr noundef %38) #10
  %39 = getelementptr %struct.msm_kms, ptr %0, i32 0, i32 9, i32 6
  tail call void @msm_atomic_destroy_pending_timer(ptr noundef %39) #10
  %40 = getelementptr %struct.msm_kms, ptr %0, i32 0, i32 9, i32 7
  tail call void @msm_atomic_destroy_pending_timer(ptr noundef %40) #10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @msm_mdp_register() local_unnamed_addr #4 section ".init.text" {
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.7) #10
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @mdp5_driver, ptr noundef nonnull @__this_module) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @msm_mdp_unregister() local_unnamed_addr #4 section ".exit.text" {
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.7) #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @mdp5_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_atomic_init_pending_timer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mdp5_hw_init(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.mdp5_kms, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %5 = tail call i32 @__pm_runtime_resume(ptr noundef %4, i32 noundef 4) #10
  %6 = getelementptr inbounds %struct.mdp5_kms, ptr %0, i32 0, i32 23
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #10
  %8 = getelementptr inbounds %struct.mdp5_kms, ptr %0, i32 0, i32 26
  %9 = load i32, ptr %8, align 8
  %10 = icmp slt i32 %9, 1
  br i1 %10, label %11, label %12, !prof !9

11:                                               ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 169, i32 noundef 9, ptr noundef null) #10
  br label %12

12:                                               ; preds = %11, %1
  %13 = getelementptr inbounds %struct.mdp5_kms, ptr %0, i32 0, i32 15
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 4
  tail call void @msm_writel(i32 noundef 0, ptr noundef %15) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #10
  %16 = getelementptr inbounds %struct.mdp5_kms, ptr %0, i32 0, i32 14
  %17 = load ptr, ptr %16, align 8
  tail call void @mdp5_ctlm_hw_reset(ptr noundef %17) #10
  %18 = tail call i32 @__pm_runtime_idle(ptr noundef %4, i32 noundef 4) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdp5_irq_preinstall(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdp5_irq_postinstall(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdp5_irq_uninstall(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdp5_irq(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdp5_enable_vblank(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdp5_disable_vblank(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mdp5_enable_commit(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.mdp5_kms, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %5 = tail call i32 @__pm_runtime_resume(ptr noundef %4, i32 noundef 4) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mdp5_disable_commit(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.mdp5_kms, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %5 = tail call i32 @__pm_runtime_idle(ptr noundef %4, i32 noundef 4) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mdp5_prepare_commit(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #2 {
  %3 = getelementptr inbounds %struct.mdp5_kms, ptr %0, i32 0, i32 13
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.mdp5_kms, ptr %0, i32 0, i32 12, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.mdp5_global_state, ptr %8, i32 0, i32 5
  tail call void @mdp5_smp_prepare_commit(ptr noundef nonnull %4, ptr noundef %9) #10
  br label %10

10:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @mdp5_flush_commit(ptr nocapture noundef %0, i32 noundef %1) #5 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mdp5_wait_flush(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.mdp5_kms, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 30, i32 20
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %24, label %8

8:                                                ; preds = %19, %2
  %9 = phi ptr [ %20, %19 ], [ %4, %2 ]
  %10 = phi ptr [ %21, %19 ], [ %6, %2 ]
  %11 = getelementptr i8, ptr %10, i32 72
  %12 = load i32, ptr %11, align 8
  %13 = shl nuw i32 1, %12
  %14 = and i32 %13, %1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %8
  %17 = getelementptr i8, ptr %10, i32 -8
  tail call void @mdp5_crtc_wait_for_commit_done(ptr noundef %17) #10
  %18 = load ptr, ptr %3, align 8
  br label %19

19:                                               ; preds = %16, %8
  %20 = phi ptr [ %18, %16 ], [ %9, %8 ]
  %21 = load ptr, ptr %10, align 4
  %22 = getelementptr inbounds %struct.drm_device, ptr %20, i32 0, i32 30, i32 20
  %23 = icmp eq ptr %21, %22
  br i1 %23, label %24, label %8

24:                                               ; preds = %19, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mdp5_complete_commit(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.mdp5_kms, ptr %0, i32 0, i32 13
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.mdp5_kms, ptr %0, i32 0, i32 12, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.mdp5_global_state, ptr %8, i32 0, i32 5
  tail call void @mdp5_smp_complete_commit(ptr noundef nonnull %4, ptr noundef %9) #10
  br label %10

10:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdp_get_format(ptr noundef, i32 noundef, i64 noundef) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @mdp5_round_pixclk(ptr nocapture noundef readnone %0, i32 noundef returned %1, ptr nocapture noundef readnone %2) #5 {
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mdp5_set_split_display(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) #2 {
  br i1 %3, label %5, label %7

5:                                                ; preds = %4
  %6 = tail call i32 @mdp5_cmd_encoder_set_split_display(ptr noundef %1, ptr noundef %2) #10
  br label %9

7:                                                ; preds = %4
  %8 = tail call i32 @mdp5_vid_encoder_set_split_display(ptr noundef %1, ptr noundef %2) #10
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi i32 [ %6, %5 ], [ %8, %7 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mdp5_kms_debugfs_init(ptr nocapture noundef readnone %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.drm_minor, ptr %1, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  tail call void @drm_debugfs_create_files(ptr noundef nonnull @mdp5_debugfs_list, i32 noundef 1, ptr noundef %4, ptr noundef %1) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdp5_set_irqmask(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdp5_ctlm_hw_reset(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdp5_smp_prepare_commit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdp5_crtc_wait_for_commit_done(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdp5_smp_complete_commit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdp5_cmd_encoder_set_split_display(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdp5_vid_encoder_set_split_display(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_debugfs_create_files(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @smp_show(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = alloca %struct.drm_printer, align 4
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_minor, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.drm_device, ptr %8, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.msm_drm_private, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  store ptr @__drm_printfn_seq_file, ptr %3, align 4, !alias.scope !10
  %13 = getelementptr inbounds %struct.drm_printer, ptr %3, i32 0, i32 1
  store ptr @__drm_puts_seq_file, ptr %13, align 4, !alias.scope !10
  %14 = getelementptr inbounds %struct.drm_printer, ptr %3, i32 0, i32 2
  store ptr %0, ptr %14, align 4, !alias.scope !10
  %15 = getelementptr inbounds %struct.drm_printer, ptr %3, i32 0, i32 3
  store ptr null, ptr %15, align 4, !alias.scope !10
  %16 = getelementptr inbounds %struct.mdp5_kms, ptr %12, i32 0, i32 13
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  call void (ptr, ptr, ...) @drm_printf(ptr noundef nonnull %3, ptr noundef nonnull @.str.10) #10
  br label %21

20:                                               ; preds = %2
  call void @mdp5_smp_dump(ptr noundef nonnull %17, ptr noundef nonnull %3) #10
  br label %21

21:                                               ; preds = %20, %19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #10
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdp5_smp_dump(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_printfn_seq_file(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_puts_seq_file(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_writel(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdp5_plane_init(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdp5_crtc_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdp5_ctlm_request(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_hdmi_modeset_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdp5_cfg_get_hw_config(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_dsi_modeset_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdp5_encoder_set_intf_mode(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @msm_dsi_is_cmd_mode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdp5_encoder_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdp5_mixer_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdp5_pipe_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_address_space_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_atomic_destroy_pending_timer(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mdp5_dev_probe(ptr noundef %0) #2 {
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.7) #10
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call ptr @of_icc_get(ptr noundef %2, ptr noundef nonnull @.str.19) #10
  %4 = tail call ptr @of_icc_get(ptr noundef %2, ptr noundef nonnull @.str.20) #10
  %5 = tail call ptr @of_icc_get(ptr noundef %2, ptr noundef nonnull @.str.21) #10
  %6 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %23, label %7

7:                                                ; preds = %1
  %8 = icmp eq ptr %3, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %2, ptr noundef nonnull @.str.22) #11
  br label %25

10:                                               ; preds = %7
  %11 = tail call i32 @icc_set_bw(ptr noundef nonnull %3, i32 noundef 0, i32 noundef 6400000) #10
  %12 = icmp eq ptr %4, null
  %13 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  %14 = or i1 %12, %13
  br i1 %14, label %17, label %15

15:                                               ; preds = %10
  %16 = tail call i32 @icc_set_bw(ptr noundef nonnull %4, i32 noundef 0, i32 noundef 6400000) #10
  br label %17

17:                                               ; preds = %15, %10
  %18 = icmp eq ptr %5, null
  %19 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  %20 = or i1 %18, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = tail call i32 @icc_set_bw(ptr noundef nonnull %5, i32 noundef 0, i32 noundef 6400000) #10
  br label %25

23:                                               ; preds = %1
  %24 = ptrtoint ptr %3 to i32
  br label %27

25:                                               ; preds = %21, %17, %9
  %26 = tail call i32 @component_add(ptr noundef %2, ptr noundef nonnull @mdp5_ops) #10
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %26, %25 ], [ %24, %23 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mdp5_dev_remove(ptr noundef %0) #2 {
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.7) #10
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @component_del(ptr noundef %2, ptr noundef nonnull @mdp5_ops) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_icc_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @icc_set_bw(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mdp5_bind(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #2 {
  %4 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr i8, ptr %0, i32 -16
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.7) #10
  %8 = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 1240, i32 noundef 3520) #10
  %11 = icmp eq ptr %10, null
  br i1 %11, label %360, label %12

12:                                               ; preds = %3
  %13 = getelementptr i8, ptr %0, i32 64
  store ptr %10, ptr %13, align 8
  %14 = getelementptr inbounds %struct.mdp5_kms, ptr %10, i32 0, i32 23
  store i32 0, ptr %14, align 4
  %15 = getelementptr inbounds %struct.mdp5_kms, ptr %10, i32 0, i32 1
  store ptr %6, ptr %15, align 8
  %16 = getelementptr inbounds %struct.mdp5_kms, ptr %10, i32 0, i32 2
  store ptr %7, ptr %16, align 4
  %17 = getelementptr inbounds %struct.mdp5_kms, ptr %10, i32 0, i32 11
  tail call void @drm_modeset_lock_init(ptr noundef %17) #10
  %18 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %19 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3520, i32 noundef 368) #12
  %20 = icmp eq ptr %19, null
  br i1 %20, label %358, label %21

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.mdp5_global_state, ptr %19, i32 0, i32 2
  store ptr %10, ptr %22, align 8
  %23 = load ptr, ptr %15, align 8
  %24 = getelementptr inbounds %struct.mdp5_kms, ptr %10, i32 0, i32 12
  tail call void @drm_atomic_private_obj_init(ptr noundef %23, ptr noundef %24, ptr noundef nonnull %19, ptr noundef nonnull @mdp5_global_state_funcs) #10
  %25 = tail call ptr @msm_ioremap(ptr noundef %7, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24) #10
  %26 = getelementptr inbounds %struct.mdp5_kms, ptr %10, i32 0, i32 15
  store ptr %25, ptr %26, align 4
  %27 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = ptrtoint ptr %25 to i32
  br label %358

30:                                               ; preds = %21
  %31 = tail call ptr @msm_clk_get(ptr noundef %7, ptr noundef nonnull @.str.25) #10
  %32 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  br i1 %32, label %37, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.mdp5_kms, ptr %10, i32 0, i32 16
  store ptr %31, ptr %34, align 4
  %35 = tail call ptr @msm_clk_get(ptr noundef %7, ptr noundef nonnull @.str.26) #10
  %36 = icmp ugt ptr %35, inttoptr (i32 -4096 to ptr)
  br i1 %36, label %49, label %39

37:                                               ; preds = %30
  %38 = ptrtoint ptr %31 to i32
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.25, i32 noundef %38) #10
  br label %358

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.mdp5_kms, ptr %10, i32 0, i32 17
  store ptr %35, ptr %40, align 4
  %41 = getelementptr inbounds %struct.mdp5_kms, ptr %10, i32 0, i32 18
  %42 = tail call ptr @msm_clk_get(ptr noundef %7, ptr noundef nonnull @.str.27) #10
  %43 = icmp ugt ptr %42, inttoptr (i32 -4096 to ptr)
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  store ptr %42, ptr %41, align 4
  %45 = tail call ptr @msm_clk_get(ptr noundef %7, ptr noundef nonnull @.str.28) #10
  %46 = icmp ugt ptr %45, inttoptr (i32 -4096 to ptr)
  br i1 %46, label %55, label %51

47:                                               ; preds = %39
  %48 = ptrtoint ptr %42 to i32
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.27, i32 noundef %48) #10
  br label %358

49:                                               ; preds = %33
  %50 = ptrtoint ptr %35 to i32
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.26, i32 noundef %50) #10
  br label %358

51:                                               ; preds = %44
  %52 = getelementptr inbounds %struct.mdp5_kms, ptr %10, i32 0, i32 22
  store ptr %45, ptr %52, align 4
  %53 = tail call ptr @msm_clk_get(ptr noundef %7, ptr noundef nonnull @.str.29) #10
  %54 = icmp ugt ptr %53, inttoptr (i32 -4096 to ptr)
  br i1 %54, label %57, label %58

55:                                               ; preds = %44
  %56 = ptrtoint ptr %45 to i32
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.28, i32 noundef %56) #10
  br label %358

57:                                               ; preds = %51
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.29) #10
  br label %60

58:                                               ; preds = %51
  %59 = getelementptr inbounds %struct.mdp5_kms, ptr %10, i32 0, i32 19
  store ptr %53, ptr %59, align 4
  br label %60

60:                                               ; preds = %58, %57
  %61 = tail call ptr @msm_clk_get(ptr noundef %7, ptr noundef nonnull @.str.30) #10
  %62 = icmp ugt ptr %61, inttoptr (i32 -4096 to ptr)
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.30) #10
  br label %66

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.mdp5_kms, ptr %10, i32 0, i32 20
  store ptr %61, ptr %65, align 4
  br label %66

66:                                               ; preds = %64, %63
  %67 = tail call ptr @msm_clk_get(ptr noundef %7, ptr noundef nonnull @.str.31) #10
  %68 = icmp ugt ptr %67, inttoptr (i32 -4096 to ptr)
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.31) #10
  br label %72

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.mdp5_kms, ptr %10, i32 0, i32 21
  store ptr %67, ptr %71, align 4
  br label %72

72:                                               ; preds = %70, %69
  %73 = load ptr, ptr %41, align 8
  %74 = tail call i32 @clk_set_rate(ptr noundef %73, i32 noundef 200000000) #10
  tail call void @pm_runtime_enable(ptr noundef %0) #10
  %75 = getelementptr inbounds %struct.mdp5_kms, ptr %10, i32 0, i32 24
  store i8 1, ptr %75, align 8
  %76 = load ptr, ptr %16, align 4
  %77 = getelementptr inbounds %struct.platform_device, ptr %76, i32 0, i32 3
  %78 = tail call i32 @__pm_runtime_resume(ptr noundef %77, i32 noundef 4) #10
  %79 = getelementptr inbounds %struct.mdp5_kms, ptr %10, i32 0, i32 26
  %80 = load i32, ptr %79, align 8
  %81 = icmp slt i32 %80, 1
  br i1 %81, label %82, label %83, !prof !9

82:                                               ; preds = %72
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 175, i32 noundef 9, ptr noundef null) #10
  br label %83

83:                                               ; preds = %82, %72
  %84 = load ptr, ptr %26, align 4
  %85 = tail call i32 @msm_readl(ptr noundef %84) #10
  %86 = tail call i32 @__pm_runtime_idle(ptr noundef %77, i32 noundef 4) #10
  %87 = lshr i32 %85, 28
  %88 = lshr i32 %85, 16
  %89 = and i32 %88, 4095
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %77, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.34, i32 noundef %87, i32 noundef %89) #10
  %90 = tail call ptr @mdp5_cfg_init(ptr noundef nonnull %10, i32 noundef %87, i32 noundef %89) #10
  %91 = getelementptr inbounds %struct.mdp5_kms, ptr %10, i32 0, i32 9
  store ptr %90, ptr %91, align 4
  %92 = icmp ugt ptr %90, inttoptr (i32 -4096 to ptr)
  br i1 %92, label %93, label %95

93:                                               ; preds = %83
  %94 = ptrtoint ptr %90 to i32
  store ptr null, ptr %91, align 4
  br label %358

95:                                               ; preds = %83
  %96 = tail call ptr @mdp5_cfg_get_config(ptr noundef %90) #10
  %97 = load ptr, ptr %96, align 4
  %98 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %97, i32 0, i32 1, i32 2
  %99 = load i32, ptr %98, align 4
  %100 = getelementptr inbounds %struct.mdp5_kms, ptr %10, i32 0, i32 10
  store i32 %99, ptr %100, align 8
  %101 = load ptr, ptr %41, align 8
  %102 = load ptr, ptr %96, align 4
  %103 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %102, i32 0, i32 16
  %104 = load i32, ptr %103, align 4
  %105 = tail call i32 @clk_set_rate(ptr noundef %101, i32 noundef %104) #10
  %106 = load i32, ptr %100, align 8
  %107 = and i32 %106, 1
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %117, label %109

109:                                              ; preds = %95
  %110 = load ptr, ptr %96, align 4
  %111 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %110, i32 0, i32 2
  %112 = tail call ptr @mdp5_smp_init(ptr noundef nonnull %10, ptr noundef %111) #10
  %113 = getelementptr inbounds %struct.mdp5_kms, ptr %10, i32 0, i32 13
  store ptr %112, ptr %113, align 4
  %114 = icmp ugt ptr %112, inttoptr (i32 -4096 to ptr)
  br i1 %114, label %115, label %117

115:                                              ; preds = %109
  %116 = ptrtoint ptr %112 to i32
  store ptr null, ptr %113, align 4
  br label %358

117:                                              ; preds = %109, %95
  %118 = load ptr, ptr %26, align 4
  %119 = load ptr, ptr %91, align 4
  %120 = tail call ptr @mdp5_ctlm_init(ptr noundef %6, ptr noundef %118, ptr noundef %119) #10
  %121 = getelementptr inbounds %struct.mdp5_kms, ptr %10, i32 0, i32 14
  store ptr %120, ptr %121, align 8
  %122 = icmp ugt ptr %120, inttoptr (i32 -4096 to ptr)
  br i1 %122, label %123, label %125

123:                                              ; preds = %117
  %124 = ptrtoint ptr %120 to i32
  store ptr null, ptr %121, align 8
  br label %358

125:                                              ; preds = %117
  %126 = load ptr, ptr %91, align 4
  %127 = tail call ptr @mdp5_cfg_get_hw_config(ptr noundef %126) #10
  %128 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %127, i32 0, i32 5
  %129 = load i32, ptr %128, align 4
  %130 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %127, i32 0, i32 5, i32 1
  %131 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %127, i32 0, i32 5, i32 2
  %132 = load i32, ptr %131, align 4
  %133 = load ptr, ptr %15, align 8
  %134 = icmp sgt i32 %129, 0
  br i1 %134, label %135, label %154

135:                                              ; preds = %125
  %136 = getelementptr inbounds %struct.mdp5_kms, ptr %10, i32 0, i32 3
  br label %137

137:                                              ; preds = %145, %135
  %138 = phi i32 [ 0, %135 ], [ %150, %145 ]
  %139 = getelementptr i32, ptr @hwpipe_init.rgb_planes, i32 %138
  %140 = load i32, ptr %139, align 4
  %141 = getelementptr i32, ptr %130, i32 %138
  %142 = load i32, ptr %141, align 4
  %143 = tail call ptr @mdp5_pipe_init(i32 noundef %140, i32 noundef %142, i32 noundef %132) #10
  %144 = icmp ugt ptr %143, inttoptr (i32 -4096 to ptr)
  br i1 %144, label %233, label %145

145:                                              ; preds = %137
  %146 = load i32, ptr %136, align 8
  store i32 %146, ptr %143, align 4
  %147 = load i32, ptr %136, align 8
  %148 = add i32 %147, 1
  store i32 %148, ptr %136, align 8
  %149 = getelementptr %struct.mdp5_kms, ptr %10, i32 0, i32 4, i32 %147
  store ptr %143, ptr %149, align 4
  %150 = add nuw nsw i32 %138, 1
  %151 = icmp eq i32 %150, %129
  br i1 %151, label %152, label %137

152:                                              ; preds = %145
  %153 = load ptr, ptr %15, align 8
  br label %154

154:                                              ; preds = %152, %125
  %155 = phi ptr [ %153, %152 ], [ %133, %125 ]
  %156 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %127, i32 0, i32 4
  %157 = load i32, ptr %156, align 4
  %158 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %127, i32 0, i32 4, i32 1
  %159 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %127, i32 0, i32 4, i32 2
  %160 = load i32, ptr %159, align 4
  %161 = icmp sgt i32 %157, 0
  br i1 %161, label %162, label %181

162:                                              ; preds = %154
  %163 = getelementptr inbounds %struct.mdp5_kms, ptr %10, i32 0, i32 3
  br label %164

164:                                              ; preds = %172, %162
  %165 = phi i32 [ 0, %162 ], [ %177, %172 ]
  %166 = getelementptr i32, ptr @hwpipe_init.vig_planes, i32 %165
  %167 = load i32, ptr %166, align 4
  %168 = getelementptr i32, ptr %158, i32 %165
  %169 = load i32, ptr %168, align 4
  %170 = tail call ptr @mdp5_pipe_init(i32 noundef %167, i32 noundef %169, i32 noundef %160) #10
  %171 = icmp ugt ptr %170, inttoptr (i32 -4096 to ptr)
  br i1 %171, label %233, label %172

172:                                              ; preds = %164
  %173 = load i32, ptr %163, align 8
  store i32 %173, ptr %170, align 4
  %174 = load i32, ptr %163, align 8
  %175 = add i32 %174, 1
  store i32 %175, ptr %163, align 8
  %176 = getelementptr %struct.mdp5_kms, ptr %10, i32 0, i32 4, i32 %174
  store ptr %170, ptr %176, align 4
  %177 = add nuw nsw i32 %165, 1
  %178 = icmp eq i32 %177, %157
  br i1 %178, label %179, label %164

179:                                              ; preds = %172
  %180 = load ptr, ptr %15, align 8
  br label %181

181:                                              ; preds = %179, %154
  %182 = phi ptr [ %180, %179 ], [ %155, %154 ]
  %183 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %127, i32 0, i32 6
  %184 = load i32, ptr %183, align 4
  %185 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %127, i32 0, i32 6, i32 1
  %186 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %127, i32 0, i32 6, i32 2
  %187 = load i32, ptr %186, align 4
  %188 = icmp sgt i32 %184, 0
  br i1 %188, label %189, label %208

189:                                              ; preds = %181
  %190 = getelementptr inbounds %struct.mdp5_kms, ptr %10, i32 0, i32 3
  br label %191

191:                                              ; preds = %199, %189
  %192 = phi i32 [ 0, %189 ], [ %204, %199 ]
  %193 = getelementptr i32, ptr @hwpipe_init.dma_planes, i32 %192
  %194 = load i32, ptr %193, align 4
  %195 = getelementptr i32, ptr %185, i32 %192
  %196 = load i32, ptr %195, align 4
  %197 = tail call ptr @mdp5_pipe_init(i32 noundef %194, i32 noundef %196, i32 noundef %187) #10
  %198 = icmp ugt ptr %197, inttoptr (i32 -4096 to ptr)
  br i1 %198, label %233, label %199

199:                                              ; preds = %191
  %200 = load i32, ptr %190, align 8
  store i32 %200, ptr %197, align 4
  %201 = load i32, ptr %190, align 8
  %202 = add i32 %201, 1
  store i32 %202, ptr %190, align 8
  %203 = getelementptr %struct.mdp5_kms, ptr %10, i32 0, i32 4, i32 %201
  store ptr %197, ptr %203, align 4
  %204 = add nuw nsw i32 %192, 1
  %205 = icmp eq i32 %204, %184
  br i1 %205, label %206, label %191

206:                                              ; preds = %199
  %207 = load ptr, ptr %15, align 8
  br label %208

208:                                              ; preds = %206, %181
  %209 = phi ptr [ %207, %206 ], [ %182, %181 ]
  %210 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %127, i32 0, i32 7
  %211 = load i32, ptr %210, align 4
  %212 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %127, i32 0, i32 7, i32 1
  %213 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %127, i32 0, i32 7, i32 2
  %214 = load i32, ptr %213, align 4
  %215 = icmp sgt i32 %211, 0
  br i1 %215, label %216, label %242

216:                                              ; preds = %208
  %217 = getelementptr inbounds %struct.mdp5_kms, ptr %10, i32 0, i32 3
  br label %218

218:                                              ; preds = %226, %216
  %219 = phi i32 [ 0, %216 ], [ %231, %226 ]
  %220 = getelementptr i32, ptr @hwpipe_init.cursor_planes, i32 %219
  %221 = load i32, ptr %220, align 4
  %222 = getelementptr i32, ptr %212, i32 %219
  %223 = load i32, ptr %222, align 4
  %224 = tail call ptr @mdp5_pipe_init(i32 noundef %221, i32 noundef %223, i32 noundef %214) #10
  %225 = icmp ugt ptr %224, inttoptr (i32 -4096 to ptr)
  br i1 %225, label %233, label %226

226:                                              ; preds = %218
  %227 = load i32, ptr %217, align 8
  store i32 %227, ptr %224, align 4
  %228 = load i32, ptr %217, align 8
  %229 = add i32 %228, 1
  store i32 %229, ptr %217, align 8
  %230 = getelementptr %struct.mdp5_kms, ptr %10, i32 0, i32 4, i32 %228
  store ptr %224, ptr %230, align 4
  %231 = add nuw nsw i32 %219, 1
  %232 = icmp eq i32 %231, %211
  br i1 %232, label %242, label %218

233:                                              ; preds = %218, %191, %164, %137
  %234 = phi ptr [ %209, %218 ], [ %182, %191 ], [ %155, %164 ], [ %133, %137 ]
  %235 = phi i32 [ %221, %218 ], [ %194, %191 ], [ %167, %164 ], [ %140, %137 ]
  %236 = phi ptr [ %224, %218 ], [ %197, %191 ], [ %170, %164 ], [ %143, %137 ]
  %237 = ptrtoint ptr %236 to i32
  %238 = getelementptr inbounds %struct.drm_device, ptr %234, i32 0, i32 2
  %239 = load ptr, ptr %238, align 4
  %240 = getelementptr [13 x ptr], ptr @pipe2name.names, i32 0, i32 %235
  %241 = load ptr, ptr %240, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %239, ptr noundef nonnull @.str, ptr noundef nonnull @.str.35, ptr noundef %241, i32 noundef %237) #10
  br label %358

242:                                              ; preds = %226, %208
  %243 = load ptr, ptr %15, align 8
  %244 = load ptr, ptr %91, align 4
  %245 = tail call ptr @mdp5_cfg_get_hw_config(ptr noundef %244) #10
  %246 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %245, i32 0, i32 8
  %247 = load i32, ptr %246, align 4
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %268, label %249

249:                                              ; preds = %242
  %250 = getelementptr inbounds %struct.mdp5_kms, ptr %10, i32 0, i32 5
  br label %251

251:                                              ; preds = %256, %249
  %252 = phi i32 [ 0, %249 ], [ %261, %256 ]
  %253 = getelementptr %struct.mdp5_cfg_hw, ptr %245, i32 0, i32 8, i32 2, i32 %252
  %254 = tail call ptr @mdp5_mixer_init(ptr noundef %253) #10
  %255 = icmp ugt ptr %254, inttoptr (i32 -4096 to ptr)
  br i1 %255, label %264, label %256

256:                                              ; preds = %251
  %257 = load i32, ptr %250, align 8
  store i32 %257, ptr %254, align 4
  %258 = load i32, ptr %250, align 8
  %259 = add i32 %258, 1
  store i32 %259, ptr %250, align 8
  %260 = getelementptr %struct.mdp5_kms, ptr %10, i32 0, i32 6, i32 %258
  store ptr %254, ptr %260, align 4
  %261 = add nuw i32 %252, 1
  %262 = load i32, ptr %246, align 4
  %263 = icmp ult i32 %261, %262
  br i1 %263, label %251, label %268

264:                                              ; preds = %251
  %265 = ptrtoint ptr %254 to i32
  %266 = getelementptr inbounds %struct.drm_device, ptr %243, i32 0, i32 2
  %267 = load ptr, ptr %266, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %267, ptr noundef nonnull @.str, ptr noundef nonnull @.str.48, i32 noundef %252, i32 noundef %265) #10
  br label %358

268:                                              ; preds = %256, %242
  %269 = load ptr, ptr %15, align 8
  %270 = load ptr, ptr %91, align 4
  %271 = tail call ptr @mdp5_cfg_get_hw_config(ptr noundef %270) #10
  %272 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %271, i32 0, i32 14, i32 1
  %273 = getelementptr inbounds %struct.mdp5_kms, ptr %10, i32 0, i32 7
  %274 = load i32, ptr %272, align 4
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %288, label %276

276:                                              ; preds = %268
  %277 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %278 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %277, i32 noundef 3520, i32 noundef 16) #12
  %279 = icmp eq ptr %278, null
  br i1 %279, label %352, label %280

280:                                              ; preds = %276
  %281 = getelementptr inbounds %struct.mdp5_interface, ptr %278, i32 0, i32 1
  store i32 0, ptr %281, align 4
  %282 = load i32, ptr %272, align 4
  %283 = getelementptr inbounds %struct.mdp5_interface, ptr %278, i32 0, i32 2
  store i32 %282, ptr %283, align 8
  %284 = getelementptr inbounds %struct.mdp5_interface, ptr %278, i32 0, i32 3
  store i32 0, ptr %284, align 4
  %285 = load i32, ptr %273, align 4
  store i32 %285, ptr %278, align 8
  %286 = add i32 %285, 1
  store i32 %286, ptr %273, align 4
  %287 = getelementptr %struct.mdp5_kms, ptr %10, i32 0, i32 8, i32 %285
  store ptr %278, ptr %287, align 4
  br label %288

288:                                              ; preds = %280, %268
  %289 = getelementptr %struct.mdp5_cfg_hw, ptr %271, i32 0, i32 14, i32 1, i32 1
  %290 = load i32, ptr %289, align 4
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %304, label %292

292:                                              ; preds = %288
  %293 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %294 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %293, i32 noundef 3520, i32 noundef 16) #12
  %295 = icmp eq ptr %294, null
  br i1 %295, label %352, label %296

296:                                              ; preds = %292
  %297 = getelementptr inbounds %struct.mdp5_interface, ptr %294, i32 0, i32 1
  store i32 1, ptr %297, align 4
  %298 = load i32, ptr %289, align 4
  %299 = getelementptr inbounds %struct.mdp5_interface, ptr %294, i32 0, i32 2
  store i32 %298, ptr %299, align 8
  %300 = getelementptr inbounds %struct.mdp5_interface, ptr %294, i32 0, i32 3
  store i32 0, ptr %300, align 4
  %301 = load i32, ptr %273, align 4
  store i32 %301, ptr %294, align 8
  %302 = add i32 %301, 1
  store i32 %302, ptr %273, align 4
  %303 = getelementptr %struct.mdp5_kms, ptr %10, i32 0, i32 8, i32 %301
  store ptr %294, ptr %303, align 4
  br label %304

304:                                              ; preds = %296, %288
  %305 = getelementptr %struct.mdp5_cfg_hw, ptr %271, i32 0, i32 14, i32 1, i32 2
  %306 = load i32, ptr %305, align 4
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %320, label %308

308:                                              ; preds = %304
  %309 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %310 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %309, i32 noundef 3520, i32 noundef 16) #12
  %311 = icmp eq ptr %310, null
  br i1 %311, label %352, label %312

312:                                              ; preds = %308
  %313 = getelementptr inbounds %struct.mdp5_interface, ptr %310, i32 0, i32 1
  store i32 2, ptr %313, align 4
  %314 = load i32, ptr %305, align 4
  %315 = getelementptr inbounds %struct.mdp5_interface, ptr %310, i32 0, i32 2
  store i32 %314, ptr %315, align 8
  %316 = getelementptr inbounds %struct.mdp5_interface, ptr %310, i32 0, i32 3
  store i32 0, ptr %316, align 4
  %317 = load i32, ptr %273, align 4
  store i32 %317, ptr %310, align 8
  %318 = add i32 %317, 1
  store i32 %318, ptr %273, align 4
  %319 = getelementptr %struct.mdp5_kms, ptr %10, i32 0, i32 8, i32 %317
  store ptr %310, ptr %319, align 4
  br label %320

320:                                              ; preds = %312, %304
  %321 = getelementptr %struct.mdp5_cfg_hw, ptr %271, i32 0, i32 14, i32 1, i32 3
  %322 = load i32, ptr %321, align 4
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %336, label %324

324:                                              ; preds = %320
  %325 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %326 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %325, i32 noundef 3520, i32 noundef 16) #12
  %327 = icmp eq ptr %326, null
  br i1 %327, label %352, label %328

328:                                              ; preds = %324
  %329 = getelementptr inbounds %struct.mdp5_interface, ptr %326, i32 0, i32 1
  store i32 3, ptr %329, align 4
  %330 = load i32, ptr %321, align 4
  %331 = getelementptr inbounds %struct.mdp5_interface, ptr %326, i32 0, i32 2
  store i32 %330, ptr %331, align 8
  %332 = getelementptr inbounds %struct.mdp5_interface, ptr %326, i32 0, i32 3
  store i32 0, ptr %332, align 4
  %333 = load i32, ptr %273, align 4
  store i32 %333, ptr %326, align 8
  %334 = add i32 %333, 1
  store i32 %334, ptr %273, align 4
  %335 = getelementptr %struct.mdp5_kms, ptr %10, i32 0, i32 8, i32 %333
  store ptr %326, ptr %335, align 4
  br label %336

336:                                              ; preds = %328, %320
  %337 = getelementptr %struct.mdp5_cfg_hw, ptr %271, i32 0, i32 14, i32 1, i32 4
  %338 = load i32, ptr %337, align 4
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %356, label %340

340:                                              ; preds = %336
  %341 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %342 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %341, i32 noundef 3520, i32 noundef 16) #12
  %343 = icmp eq ptr %342, null
  br i1 %343, label %352, label %344

344:                                              ; preds = %340
  %345 = getelementptr inbounds %struct.mdp5_interface, ptr %342, i32 0, i32 1
  store i32 4, ptr %345, align 4
  %346 = load i32, ptr %337, align 4
  %347 = getelementptr inbounds %struct.mdp5_interface, ptr %342, i32 0, i32 2
  store i32 %346, ptr %347, align 8
  %348 = getelementptr inbounds %struct.mdp5_interface, ptr %342, i32 0, i32 3
  store i32 0, ptr %348, align 4
  %349 = load i32, ptr %273, align 4
  store i32 %349, ptr %342, align 8
  %350 = add i32 %349, 1
  store i32 %350, ptr %273, align 4
  %351 = getelementptr %struct.mdp5_kms, ptr %10, i32 0, i32 8, i32 %349
  store ptr %342, ptr %351, align 4
  br label %356

352:                                              ; preds = %340, %324, %308, %292, %276
  %353 = phi i32 [ 0, %276 ], [ 1, %292 ], [ 2, %308 ], [ 3, %324 ], [ 4, %340 ]
  %354 = getelementptr inbounds %struct.drm_device, ptr %269, i32 0, i32 2
  %355 = load ptr, ptr %354, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %355, ptr noundef nonnull @.str, ptr noundef nonnull @.str.49, i32 noundef %353) #10
  br label %358

356:                                              ; preds = %344, %336
  %357 = getelementptr inbounds %struct.msm_drm_private, ptr %9, i32 0, i32 1
  store ptr %10, ptr %357, align 4
  br label %360

358:                                              ; preds = %352, %264, %233, %123, %115, %93, %55, %49, %47, %37, %28, %12
  %359 = phi i32 [ -12, %12 ], [ -12, %352 ], [ %265, %264 ], [ %237, %233 ], [ %124, %123 ], [ %116, %115 ], [ %94, %93 ], [ %56, %55 ], [ %48, %47 ], [ %50, %49 ], [ %38, %37 ], [ %29, %28 ]
  tail call fastcc void @mdp5_destroy(ptr noundef %7) #10
  br label %360

360:                                              ; preds = %358, %356, %3
  %361 = phi i32 [ 0, %356 ], [ %359, %358 ], [ -12, %3 ]
  ret i32 %361
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mdp5_unbind(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 -16
  tail call fastcc void @mdp5_destroy(ptr noundef %4)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_ioremap(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdp5_cfg_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdp5_smp_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdp5_ctlm_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mdp5_destroy(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mdp5_kms, ptr %3, i32 0, i32 14
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void @mdp5_ctlm_destroy(ptr noundef nonnull %5) #10
  br label %8

8:                                                ; preds = %7, %1
  %9 = getelementptr inbounds %struct.mdp5_kms, ptr %3, i32 0, i32 13
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @mdp5_smp_destroy(ptr noundef nonnull %10) #10
  br label %13

13:                                               ; preds = %12, %8
  %14 = getelementptr inbounds %struct.mdp5_kms, ptr %3, i32 0, i32 9
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @mdp5_cfg_destroy(ptr noundef nonnull %15) #10
  br label %18

18:                                               ; preds = %17, %13
  %19 = getelementptr inbounds %struct.mdp5_kms, ptr %3, i32 0, i32 7
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %22, %18
  %23 = phi i32 [ %26, %22 ], [ 0, %18 ]
  %24 = getelementptr %struct.mdp5_kms, ptr %3, i32 0, i32 8, i32 %23
  %25 = load ptr, ptr %24, align 4
  tail call void @kfree(ptr noundef %25) #10
  %26 = add nuw i32 %23, 1
  %27 = load i32, ptr %19, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %22, label %29

29:                                               ; preds = %22, %18
  %30 = getelementptr inbounds %struct.mdp5_kms, ptr %3, i32 0, i32 24
  %31 = load i8, ptr %30, align 8, !range !13
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %34, i1 noundef zeroext true) #10
  br label %35

35:                                               ; preds = %33, %29
  %36 = getelementptr inbounds %struct.mdp5_kms, ptr %3, i32 0, i32 12
  tail call void @drm_atomic_private_obj_fini(ptr noundef %36) #10
  %37 = getelementptr inbounds %struct.mdp5_kms, ptr %3, i32 0, i32 11, i32 1
  %38 = load volatile ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, %37
  br i1 %39, label %41, label %40, !prof !14

40:                                               ; preds = %35
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.50, i32 noundef 113, i32 noundef 9, ptr noundef null) #10
  br label %41

41:                                               ; preds = %40, %35
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_lock_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_private_obj_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @mdp5_global_duplicate_state(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.drm_private_obj, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @kmemdup(ptr noundef %3, i32 noundef 368, i32 noundef 3264) #10
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @__drm_atomic_helper_private_obj_duplicate_state(ptr noundef %0, ptr noundef nonnull %4) #10
  br label %7

7:                                                ; preds = %6, %1
  ret ptr %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mdp5_global_destroy_state(ptr nocapture noundef readnone %0, ptr noundef %1) #2 {
  tail call void @kfree(ptr noundef %1) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_private_obj_duplicate_state(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_readl(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdp5_pipe_init(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdp5_mixer_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdp5_ctlm_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdp5_smp_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdp5_cfg_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_private_obj_fini(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mdp5_runtime_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 64
  %3 = load ptr, ptr %2, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.7) #10
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.7) #10
  %4 = getelementptr inbounds %struct.mdp5_kms, ptr %3, i32 0, i32 26
  %5 = load i32, ptr %4, align 8
  %6 = add i32 %5, -1
  store i32 %6, ptr %4, align 8
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %9, !prof !9

8:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.51, i32 noundef 296, i32 noundef 9, ptr noundef null) #10
  br label %9

9:                                                ; preds = %8, %1
  %10 = getelementptr inbounds %struct.mdp5_kms, ptr %3, i32 0, i32 21
  %11 = load ptr, ptr %10, align 4
  tail call void @clk_disable(ptr noundef %11) #10
  tail call void @clk_unprepare(ptr noundef %11) #10
  %12 = getelementptr inbounds %struct.mdp5_kms, ptr %3, i32 0, i32 20
  %13 = load ptr, ptr %12, align 8
  tail call void @clk_disable(ptr noundef %13) #10
  tail call void @clk_unprepare(ptr noundef %13) #10
  %14 = getelementptr inbounds %struct.mdp5_kms, ptr %3, i32 0, i32 17
  %15 = load ptr, ptr %14, align 4
  tail call void @clk_disable(ptr noundef %15) #10
  tail call void @clk_unprepare(ptr noundef %15) #10
  %16 = getelementptr inbounds %struct.mdp5_kms, ptr %3, i32 0, i32 16
  %17 = load ptr, ptr %16, align 8
  tail call void @clk_disable(ptr noundef %17) #10
  tail call void @clk_unprepare(ptr noundef %17) #10
  %18 = getelementptr inbounds %struct.mdp5_kms, ptr %3, i32 0, i32 18
  %19 = load ptr, ptr %18, align 8
  tail call void @clk_disable(ptr noundef %19) #10
  tail call void @clk_unprepare(ptr noundef %19) #10
  %20 = getelementptr inbounds %struct.mdp5_kms, ptr %3, i32 0, i32 19
  %21 = load ptr, ptr %20, align 4
  tail call void @clk_disable(ptr noundef %21) #10
  tail call void @clk_unprepare(ptr noundef %21) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mdp5_runtime_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 64
  %3 = load ptr, ptr %2, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.7) #10
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.7) #10
  %4 = getelementptr inbounds %struct.mdp5_kms, ptr %3, i32 0, i32 26
  %5 = load i32, ptr %4, align 8
  %6 = add i32 %5, 1
  store i32 %6, ptr %4, align 8
  %7 = getelementptr inbounds %struct.mdp5_kms, ptr %3, i32 0, i32 17
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @clk_prepare(ptr noundef %8) #10
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = tail call i32 @clk_enable(ptr noundef %8) #10
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  tail call void @clk_unprepare(ptr noundef %8) #10
  br label %15

15:                                               ; preds = %14, %11, %1
  %16 = getelementptr inbounds %struct.mdp5_kms, ptr %3, i32 0, i32 16
  %17 = load ptr, ptr %16, align 8
  %18 = tail call i32 @clk_prepare(ptr noundef %17) #10
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = tail call i32 @clk_enable(ptr noundef %17) #10
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  tail call void @clk_unprepare(ptr noundef %17) #10
  br label %24

24:                                               ; preds = %23, %20, %15
  %25 = getelementptr inbounds %struct.mdp5_kms, ptr %3, i32 0, i32 18
  %26 = load ptr, ptr %25, align 8
  %27 = tail call i32 @clk_prepare(ptr noundef %26) #10
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = tail call i32 @clk_enable(ptr noundef %26) #10
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  tail call void @clk_unprepare(ptr noundef %26) #10
  br label %33

33:                                               ; preds = %32, %29, %24
  %34 = getelementptr inbounds %struct.mdp5_kms, ptr %3, i32 0, i32 19
  %35 = load ptr, ptr %34, align 4
  %36 = tail call i32 @clk_prepare(ptr noundef %35) #10
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = tail call i32 @clk_enable(ptr noundef %35) #10
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %38
  tail call void @clk_unprepare(ptr noundef %35) #10
  br label %42

42:                                               ; preds = %41, %38, %33
  %43 = getelementptr inbounds %struct.mdp5_kms, ptr %3, i32 0, i32 20
  %44 = load ptr, ptr %43, align 8
  %45 = tail call i32 @clk_prepare(ptr noundef %44) #10
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = tail call i32 @clk_enable(ptr noundef %44) #10
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %47
  tail call void @clk_unprepare(ptr noundef %44) #10
  br label %51

51:                                               ; preds = %50, %47, %42
  %52 = getelementptr inbounds %struct.mdp5_kms, ptr %3, i32 0, i32 21
  %53 = load ptr, ptr %52, align 4
  %54 = tail call i32 @clk_prepare(ptr noundef %53) #10
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = tail call i32 @clk_enable(ptr noundef %53) #10
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %56
  tail call void @clk_unprepare(ptr noundef %53) #10
  br label %60

60:                                               ; preds = %59, %56, %51
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

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
!8 = !{i64 2155895358, i64 2155895864, i64 2155895395, i64 2155895451, i64 2155895485, i64 2155895509, i64 2155895550, i64 2155895571, i64 2155895599, i64 2155895633}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{!11}
!11 = distinct !{!11, !12, !"drm_seq_file_printer: argument 0"}
!12 = distinct !{!12, !"drm_seq_file_printer"}
!13 = !{i8 0, i8 2}
!14 = !{!"branch_weights", i32 2000, i32 1}
