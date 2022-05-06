; ModuleID = '/llk/IR/drivers/gpu/drm/msm/disp/mdp5/mdp5_encoder.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/disp/mdp5/mdp5_encoder.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_encoder_funcs = type { ptr, ptr, ptr, ptr }
%struct.drm_encoder_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.atomic_t = type { i32 }
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
%struct.mdp5_encoder = type { %struct.drm_encoder, %struct.spinlock, i8, i32, ptr, ptr }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.mdp5_interface = type { i32, i32, i32, i32 }
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
%struct.mdp5_kms = type { %struct.mdp_kms, ptr, ptr, i32, [13 x ptr], i32, [8 x ptr], i32, [5 x ptr], ptr, i32, %struct.drm_modeset_lock, %struct.drm_private_obj, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, i8, %struct.mdp_irq, i32 }
%struct.mdp_kms = type { %struct.msm_kms, ptr, i8, %struct.list_head, i32, i32 }
%struct.msm_kms = type { ptr, ptr, i32, ptr, ptr, %struct.kthread_work, %struct.mutex, [8 x %struct.mutex], i32, [8 x %struct.msm_pending_timer] }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.msm_pending_timer = type { %struct.msm_hrtimer_work, ptr, ptr, i32 }
%struct.msm_hrtimer_work = type { %struct.hrtimer, %struct.kthread_work, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.mdp_irq = type { %struct.list_head, i32, i8, ptr }
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
%struct.mdp5_hw_mixer = type { i32, ptr, i32, i32, i32, i32, i32 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.mdp5_crtc_state = type { %struct.drm_crtc_state, ptr, %struct.mdp5_pipeline, i32, i32, i32, i8, i8 }
%struct.mdp5_pipeline = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [45 x i8] c"drivers/gpu/drm/msm/disp/mdp5/mdp5_encoder.c\00", align 1
@mdp5_encoder_funcs = internal constant %struct.drm_encoder_funcs { ptr null, ptr @mdp5_encoder_destroy, ptr null, ptr null }, align 4
@mdp5_encoder_helper_funcs = internal constant %struct.drm_encoder_helper_funcs { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mdp5_encoder_disable, ptr @mdp5_encoder_enable, ptr @mdp5_encoder_atomic_check }, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.h\00", align 1
@mdp5_cfg = external dso_local local_unnamed_addr global ptr, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.2 = private unnamed_addr constant [57 x i8] c"set mode: \22%s\22: %d %d %d %d %d %d %d %d %d %d 0x%x 0x%x\0A\00", align 1
@switch.table.mdp5_encoder_disable = private unnamed_addr constant [4 x i32] [i32 33554432, i32 134217728, i32 536870912, i32 -2147483648], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mdp5_encoder_get_linecount(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.msm_drm_private, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.mdp5_encoder, ptr %0, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.mdp5_interface, ptr %8, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  switch i32 %10, label %26 [
    i32 0, label %11
    i32 1, label %14
    i32 2, label %17
    i32 3, label %20
    i32 4, label %23
  ]

11:                                               ; preds = %1
  %12 = load ptr, ptr @mdp5_cfg, align 4
  %13 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %12, i32 0, i32 14
  br label %27

14:                                               ; preds = %1
  %15 = load ptr, ptr @mdp5_cfg, align 4
  %16 = getelementptr %struct.mdp5_cfg_hw, ptr %15, i32 0, i32 14, i32 0, i32 1
  br label %27

17:                                               ; preds = %1
  %18 = load ptr, ptr @mdp5_cfg, align 4
  %19 = getelementptr %struct.mdp5_cfg_hw, ptr %18, i32 0, i32 14, i32 0, i32 2
  br label %27

20:                                               ; preds = %1
  %21 = load ptr, ptr @mdp5_cfg, align 4
  %22 = getelementptr %struct.mdp5_cfg_hw, ptr %21, i32 0, i32 14, i32 0, i32 3
  br label %27

23:                                               ; preds = %1
  %24 = load ptr, ptr @mdp5_cfg, align 4
  %25 = getelementptr %struct.mdp5_cfg_hw, ptr %24, i32 0, i32 14, i32 0, i32 4
  br label %27

26:                                               ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1763, 0\0A.popsection", ""() #4, !srcloc !8
  unreachable

27:                                               ; preds = %23, %20, %17, %14, %11
  %28 = phi ptr [ %25, %23 ], [ %22, %20 ], [ %19, %17 ], [ %16, %14 ], [ %13, %11 ]
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.mdp5_kms, ptr %6, i32 0, i32 26
  %31 = load i32, ptr %30, align 8
  %32 = icmp slt i32 %31, 1
  br i1 %32, label %33, label %34, !prof !9

33:                                               ; preds = %27
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 175, i32 noundef 9, ptr noundef null) #4
  br label %34

34:                                               ; preds = %33, %27
  %35 = add i32 %29, 176
  %36 = getelementptr inbounds %struct.mdp5_kms, ptr %6, i32 0, i32 15
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr i8, ptr %37, i32 %35
  %39 = tail call i32 @msm_readl(ptr noundef %38) #4
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mdp5_encoder_get_framecount(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.msm_drm_private, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.mdp5_encoder, ptr %0, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.mdp5_interface, ptr %8, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  switch i32 %10, label %26 [
    i32 0, label %11
    i32 1, label %14
    i32 2, label %17
    i32 3, label %20
    i32 4, label %23
  ]

11:                                               ; preds = %1
  %12 = load ptr, ptr @mdp5_cfg, align 4
  %13 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %12, i32 0, i32 14
  br label %27

14:                                               ; preds = %1
  %15 = load ptr, ptr @mdp5_cfg, align 4
  %16 = getelementptr %struct.mdp5_cfg_hw, ptr %15, i32 0, i32 14, i32 0, i32 1
  br label %27

17:                                               ; preds = %1
  %18 = load ptr, ptr @mdp5_cfg, align 4
  %19 = getelementptr %struct.mdp5_cfg_hw, ptr %18, i32 0, i32 14, i32 0, i32 2
  br label %27

20:                                               ; preds = %1
  %21 = load ptr, ptr @mdp5_cfg, align 4
  %22 = getelementptr %struct.mdp5_cfg_hw, ptr %21, i32 0, i32 14, i32 0, i32 3
  br label %27

23:                                               ; preds = %1
  %24 = load ptr, ptr @mdp5_cfg, align 4
  %25 = getelementptr %struct.mdp5_cfg_hw, ptr %24, i32 0, i32 14, i32 0, i32 4
  br label %27

26:                                               ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1763, 0\0A.popsection", ""() #4, !srcloc !8
  unreachable

27:                                               ; preds = %23, %20, %17, %14, %11
  %28 = phi ptr [ %25, %23 ], [ %22, %20 ], [ %19, %17 ], [ %16, %14 ], [ %13, %11 ]
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.mdp5_kms, ptr %6, i32 0, i32 26
  %31 = load i32, ptr %30, align 8
  %32 = icmp slt i32 %31, 1
  br i1 %32, label %33, label %34, !prof !9

33:                                               ; preds = %27
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 175, i32 noundef 9, ptr noundef null) #4
  br label %34

34:                                               ; preds = %33, %27
  %35 = add i32 %29, 172
  %36 = getelementptr inbounds %struct.mdp5_kms, ptr %6, i32 0, i32 15
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr i8, ptr %37, i32 %35
  %39 = tail call i32 @msm_readl(ptr noundef %38) #4
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mdp5_vid_encoder_set_split_display(ptr noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %49

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.msm_drm_private, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.mdp5_encoder, ptr %0, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.mdp5_interface, ptr %13, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  switch i32 %15, label %49 [
    i32 1, label %17
    i32 2, label %16
  ]

16:                                               ; preds = %6
  br label %17

17:                                               ; preds = %16, %6
  %18 = phi i32 [ 16, %16 ], [ 256, %6 ]
  %19 = getelementptr inbounds %struct.mdp5_kms, ptr %11, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.platform_device, ptr %20, i32 0, i32 3
  %22 = tail call i32 @__pm_runtime_resume(ptr noundef %21, i32 noundef 4) #4
  %23 = getelementptr inbounds %struct.mdp5_kms, ptr %11, i32 0, i32 26
  %24 = load i32, ptr %23, align 8
  %25 = icmp slt i32 %24, 1
  br i1 %25, label %26, label %27, !prof !9

26:                                               ; preds = %17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 169, i32 noundef 9, ptr noundef null) #4
  br label %27

27:                                               ; preds = %26, %17
  %28 = getelementptr inbounds %struct.mdp5_kms, ptr %11, i32 0, i32 15
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr i8, ptr %29, i32 760
  tail call void @msm_writel(i32 noundef 0, ptr noundef %30) #4
  %31 = load i32, ptr %23, align 8
  %32 = icmp slt i32 %31, 1
  br i1 %32, label %33, label %34, !prof !9

33:                                               ; preds = %27
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 169, i32 noundef 9, ptr noundef null) #4
  br label %34

34:                                               ; preds = %33, %27
  %35 = load ptr, ptr %28, align 4
  %36 = getelementptr i8, ptr %35, i32 1008
  tail call void @msm_writel(i32 noundef %18, ptr noundef %36) #4
  %37 = load i32, ptr %23, align 8
  %38 = icmp slt i32 %37, 1
  br i1 %38, label %39, label %40, !prof !9

39:                                               ; preds = %34
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 169, i32 noundef 9, ptr noundef null) #4
  br label %40

40:                                               ; preds = %39, %34
  %41 = load ptr, ptr %28, align 4
  %42 = getelementptr i8, ptr %41, i32 756
  tail call void @msm_writel(i32 noundef 1, ptr noundef %42) #4
  %43 = getelementptr inbounds %struct.mdp5_encoder, ptr %0, i32 0, i32 5
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.mdp5_encoder, ptr %1, i32 0, i32 5
  %46 = load ptr, ptr %45, align 4
  %47 = tail call i32 @mdp5_ctl_pair(ptr noundef %44, ptr noundef %46, i1 noundef zeroext true) #4
  %48 = tail call i32 @__pm_runtime_idle(ptr noundef %21, i32 noundef 4) #4
  br label %49

49:                                               ; preds = %40, %6, %2
  %50 = phi i32 [ 0, %40 ], [ -22, %2 ], [ -22, %6 ]
  ret i32 %50
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdp5_ctl_pair(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mdp5_encoder_set_intf_mode(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.mdp5_encoder, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.mdp5_interface, ptr %4, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 1
  br i1 %1, label %8, label %12

8:                                                ; preds = %2
  br i1 %7, label %10, label %9, !prof !10

9:                                                ; preds = %8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 326, i32 noundef 9, ptr noundef null) #4
  br label %10

10:                                               ; preds = %9, %8
  %11 = getelementptr inbounds %struct.mdp5_interface, ptr %4, i32 0, i32 3
  store i32 2, ptr %11, align 4
  br label %16

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.mdp5_interface, ptr %4, i32 0, i32 3
  br i1 %7, label %14, label %15

14:                                               ; preds = %12
  store i32 1, ptr %13, align 4
  br label %16

15:                                               ; preds = %12
  store i32 0, ptr %13, align 4
  br label %16

16:                                               ; preds = %15, %14, %10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mdp5_encoder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.mdp5_interface, ptr %1, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 92) #5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %3
  %10 = icmp eq i32 %5, 1
  %11 = select i1 %10, i32 6, i32 2
  %12 = getelementptr inbounds %struct.mdp5_encoder, ptr %7, i32 0, i32 5
  store ptr %2, ptr %12, align 8
  %13 = getelementptr inbounds %struct.mdp5_encoder, ptr %7, i32 0, i32 4
  store ptr %1, ptr %13, align 4
  %14 = getelementptr inbounds %struct.mdp5_encoder, ptr %7, i32 0, i32 1
  store i32 0, ptr %14, align 8
  %15 = tail call i32 (ptr, ptr, ptr, i32, ptr, ...) @drm_encoder_init(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull @mdp5_encoder_funcs, i32 noundef %11, ptr noundef null) #4
  %16 = getelementptr inbounds %struct.drm_encoder, ptr %7, i32 0, i32 11
  store ptr @mdp5_encoder_helper_funcs, ptr %16, align 4
  br label %17

17:                                               ; preds = %9, %3
  %18 = phi ptr [ %7, %9 ], [ inttoptr (i32 -12 to ptr), %3 ]
  ret ptr %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_encoder_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mdp5_encoder_destroy(ptr noundef %0) #0 {
  tail call void @drm_encoder_cleanup(ptr noundef %0) #4
  tail call void @kfree(ptr noundef %0) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_readl(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_writel(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mdp5_encoder_disable(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.mdp5_encoder, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.mdp5_interface, ptr %3, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 2
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @mdp5_cmd_encoder_disable(ptr noundef %0) #4
  br label %79

8:                                                ; preds = %1
  %9 = load ptr, ptr %0, align 4
  %10 = getelementptr inbounds %struct.drm_device, ptr %9, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.msm_drm_private, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.mdp5_encoder, ptr %0, i32 0, i32 5
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.drm_encoder, ptr %0, i32 0, i32 8
  %17 = load ptr, ptr %16, align 4
  %18 = tail call ptr @mdp5_crtc_get_pipeline(ptr noundef %17) #4
  %19 = load ptr, ptr %16, align 4
  %20 = tail call ptr @mdp5_crtc_get_mixer(ptr noundef %19) #4
  %21 = load ptr, ptr %2, align 4
  %22 = getelementptr inbounds %struct.mdp5_interface, ptr %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.mdp5_encoder, ptr %0, i32 0, i32 2
  %24 = load i8, ptr %23, align 4, !range !11
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %27, !prof !9

26:                                               ; preds = %8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 142, i32 noundef 9, ptr noundef null) #4
  br label %79

27:                                               ; preds = %8
  %28 = load i32, ptr %22, align 4
  %29 = tail call i32 @mdp5_ctl_set_encoder_state(ptr noundef %15, ptr noundef %18, i1 noundef zeroext false) #4
  %30 = getelementptr inbounds %struct.mdp5_encoder, ptr %0, i32 0, i32 1
  %31 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %30) #4
  switch i32 %28, label %47 [
    i32 0, label %32
    i32 1, label %35
    i32 2, label %38
    i32 3, label %41
    i32 4, label %44
  ]

32:                                               ; preds = %27
  %33 = load ptr, ptr @mdp5_cfg, align 4
  %34 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %33, i32 0, i32 14
  br label %48

35:                                               ; preds = %27
  %36 = load ptr, ptr @mdp5_cfg, align 4
  %37 = getelementptr %struct.mdp5_cfg_hw, ptr %36, i32 0, i32 14, i32 0, i32 1
  br label %48

38:                                               ; preds = %27
  %39 = load ptr, ptr @mdp5_cfg, align 4
  %40 = getelementptr %struct.mdp5_cfg_hw, ptr %39, i32 0, i32 14, i32 0, i32 2
  br label %48

41:                                               ; preds = %27
  %42 = load ptr, ptr @mdp5_cfg, align 4
  %43 = getelementptr %struct.mdp5_cfg_hw, ptr %42, i32 0, i32 14, i32 0, i32 3
  br label %48

44:                                               ; preds = %27
  %45 = load ptr, ptr @mdp5_cfg, align 4
  %46 = getelementptr %struct.mdp5_cfg_hw, ptr %45, i32 0, i32 14, i32 0, i32 4
  br label %48

47:                                               ; preds = %27
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1763, 0\0A.popsection", ""() #4, !srcloc !8
  unreachable

48:                                               ; preds = %44, %41, %38, %35, %32
  %49 = phi ptr [ %46, %44 ], [ %43, %41 ], [ %40, %38 ], [ %37, %35 ], [ %34, %32 ]
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr inbounds %struct.mdp5_kms, ptr %13, i32 0, i32 26
  %52 = load i32, ptr %51, align 8
  %53 = icmp slt i32 %52, 1
  br i1 %53, label %54, label %55, !prof !9

54:                                               ; preds = %48
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 169, i32 noundef 9, ptr noundef null) #4
  br label %55

55:                                               ; preds = %54, %48
  %56 = getelementptr inbounds %struct.mdp5_kms, ptr %13, i32 0, i32 15
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr i8, ptr %57, i32 %50
  tail call void @msm_writel(i32 noundef 0, ptr noundef %58) #4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %30, i32 noundef %31) #4
  %59 = tail call i32 @mdp_ctl_flush_mask_encoder(ptr noundef %21) #4
  %60 = tail call i32 @mdp5_ctl_commit(ptr noundef %15, ptr noundef %18, i32 noundef %59, i1 noundef zeroext true) #4
  %61 = getelementptr inbounds %struct.mdp5_interface, ptr %21, i32 0, i32 2
  %62 = load i32, ptr %61, align 4
  switch i32 %62, label %71 [
    i32 1, label %63
    i32 101, label %77
  ]

63:                                               ; preds = %55
  %64 = getelementptr inbounds %struct.mdp5_interface, ptr %21, i32 0, i32 3
  %65 = load i32, ptr %64, align 4
  %66 = icmp eq i32 %65, 2
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.mdp5_hw_mixer, ptr %20, i32 0, i32 4
  %69 = load i32, ptr %68, align 4
  %70 = shl i32 4096, %69
  br label %77

71:                                               ; preds = %63, %55
  %72 = load i32, ptr %22, align 4
  %73 = icmp ult i32 %72, 4
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = getelementptr inbounds [4 x i32], ptr @switch.table.mdp5_encoder_disable, i32 0, i32 %72
  %76 = load i32, ptr %75, align 4
  br label %77

77:                                               ; preds = %74, %71, %67, %55
  %78 = phi i32 [ %70, %67 ], [ 16, %55 ], [ %76, %74 ], [ 0, %71 ]
  tail call void @mdp_irq_wait(ptr noundef %13, i32 noundef %78) #4
  store i8 0, ptr %23, align 4
  br label %79

79:                                               ; preds = %77, %26, %7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mdp5_encoder_enable(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.mdp5_encoder, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.drm_encoder, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_crtc, ptr %5, i32 0, i32 22
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drm_crtc_state, ptr %7, i32 0, i32 7
  %9 = getelementptr inbounds %struct.mdp5_interface, ptr %3, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.drm_crtc_state, ptr %7, i32 0, i32 8
  tail call void @mdp5_cmd_encoder_mode_set(ptr noundef %0, ptr noundef %13, ptr noundef %8) #4
  br label %525

14:                                               ; preds = %1
  %15 = load ptr, ptr %0, align 4
  %16 = getelementptr inbounds %struct.drm_device, ptr %15, i32 0, i32 5
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.msm_drm_private, ptr %17, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.mdp5_interface, ptr %3, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.drm_crtc_state, ptr %7, i32 0, i32 7, i32 31
  %23 = tail call i32 @drm_mode_vrefresh(ptr noundef %8) #4
  %24 = load i32, ptr %8, align 4
  %25 = getelementptr inbounds %struct.drm_crtc_state, ptr %7, i32 0, i32 7, i32 1
  %26 = load i16, ptr %25, align 4
  %27 = zext i16 %26 to i32
  %28 = getelementptr inbounds %struct.drm_crtc_state, ptr %7, i32 0, i32 7, i32 2
  %29 = load i16, ptr %28, align 2
  %30 = zext i16 %29 to i32
  %31 = getelementptr inbounds %struct.drm_crtc_state, ptr %7, i32 0, i32 7, i32 3
  %32 = load i16, ptr %31, align 4
  %33 = zext i16 %32 to i32
  %34 = getelementptr inbounds %struct.drm_crtc_state, ptr %7, i32 0, i32 7, i32 4
  %35 = load i16, ptr %34, align 2
  %36 = zext i16 %35 to i32
  %37 = getelementptr inbounds %struct.drm_crtc_state, ptr %7, i32 0, i32 7, i32 6
  %38 = load i16, ptr %37, align 2
  %39 = zext i16 %38 to i32
  %40 = getelementptr inbounds %struct.drm_crtc_state, ptr %7, i32 0, i32 7, i32 7
  %41 = load i16, ptr %40, align 4
  %42 = zext i16 %41 to i32
  %43 = getelementptr inbounds %struct.drm_crtc_state, ptr %7, i32 0, i32 7, i32 8
  %44 = load i16, ptr %43, align 2
  %45 = zext i16 %44 to i32
  %46 = getelementptr inbounds %struct.drm_crtc_state, ptr %7, i32 0, i32 7, i32 9
  %47 = load i16, ptr %46, align 4
  %48 = zext i16 %47 to i32
  %49 = getelementptr inbounds %struct.drm_crtc_state, ptr %7, i32 0, i32 7, i32 28
  %50 = load i8, ptr %49, align 2
  %51 = zext i8 %50 to i32
  %52 = getelementptr inbounds %struct.drm_crtc_state, ptr %7, i32 0, i32 7, i32 11
  %53 = load i32, ptr %52, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.2, ptr noundef %22, i32 noundef %23, i32 noundef %24, i32 noundef %27, i32 noundef %30, i32 noundef %33, i32 noundef %36, i32 noundef %39, i32 noundef %42, i32 noundef %45, i32 noundef %48, i32 noundef %51, i32 noundef %53) #4
  %54 = load ptr, ptr %2, align 4
  %55 = getelementptr inbounds %struct.mdp5_interface, ptr %54, i32 0, i32 2
  %56 = load i32, ptr %55, align 4
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %65, label %58

58:                                               ; preds = %14
  %59 = load i32, ptr %52, align 4
  %60 = lshr i32 %59, 1
  %61 = and i32 %60, 1
  %62 = lshr i32 %59, 2
  %63 = and i32 %62, 2
  %64 = or i32 %63, %61
  br label %65

65:                                               ; preds = %58, %14
  %66 = phi i32 [ 0, %14 ], [ %64, %58 ]
  %67 = getelementptr inbounds %struct.drm_device, ptr %15, i32 0, i32 30, i32 12
  br label %68

68:                                               ; preds = %72, %65
  %69 = phi ptr [ %67, %65 ], [ %70, %72 ]
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, %67
  br i1 %71, label %84, label %72

72:                                               ; preds = %68
  %73 = getelementptr i8, ptr %70, i32 732
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, %0
  br i1 %75, label %76, label %68

76:                                               ; preds = %72
  %77 = getelementptr i8, ptr %70, i32 112
  %78 = load i32, ptr %77, align 8
  %79 = add i32 %78, -4
  %80 = icmp ult i32 %79, 3
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = mul i32 %79, 21
  %83 = add i32 %82, 8448
  br label %84

84:                                               ; preds = %81, %76, %68
  %85 = phi i32 [ %83, %81 ], [ 8511, %76 ], [ 8448, %68 ]
  %86 = load i16, ptr %34, align 2
  %87 = zext i16 %86 to i32
  %88 = load i16, ptr %28, align 2
  %89 = zext i16 %88 to i32
  %90 = sub nsw i32 %87, %89
  %91 = load i16, ptr %25, align 4
  %92 = zext i16 %91 to i32
  %93 = load i16, ptr %46, align 4
  %94 = zext i16 %93 to i32
  %95 = mul nuw i32 %94, %87
  %96 = load i16, ptr %43, align 2
  %97 = load i16, ptr %40, align 4
  %98 = zext i16 %97 to i32
  %99 = sub nsw i32 %94, %98
  %100 = mul i32 %99, %87
  %101 = load i16, ptr %37, align 2
  %102 = zext i16 %101 to i32
  %103 = sub nsw i32 %102, %98
  %104 = mul i32 %103, %87
  %105 = icmp eq i32 %56, 9
  %106 = select i1 %105, i32 %90, i32 0
  %107 = add i32 %100, %106
  %108 = xor i32 %89, -1
  %109 = add nsw i32 %92, %108
  %110 = select i1 %105, i32 %109, i32 -1
  %111 = add i32 %110, %95
  %112 = add i32 %111, %104
  %113 = zext i16 %96 to i32
  %114 = sub nsw i32 %113, %98
  %115 = mul i32 %114, %87
  %116 = add nsw i32 %109, %87
  %117 = getelementptr inbounds %struct.mdp5_encoder, ptr %0, i32 0, i32 1
  %118 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %117) #4
  switch i32 %21, label %134 [
    i32 0, label %119
    i32 1, label %122
    i32 2, label %125
    i32 3, label %128
    i32 4, label %131
  ]

119:                                              ; preds = %84
  %120 = load ptr, ptr @mdp5_cfg, align 4
  %121 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %120, i32 0, i32 14
  br label %135

122:                                              ; preds = %84
  %123 = load ptr, ptr @mdp5_cfg, align 4
  %124 = getelementptr %struct.mdp5_cfg_hw, ptr %123, i32 0, i32 14, i32 0, i32 1
  br label %135

125:                                              ; preds = %84
  %126 = load ptr, ptr @mdp5_cfg, align 4
  %127 = getelementptr %struct.mdp5_cfg_hw, ptr %126, i32 0, i32 14, i32 0, i32 2
  br label %135

128:                                              ; preds = %84
  %129 = load ptr, ptr @mdp5_cfg, align 4
  %130 = getelementptr %struct.mdp5_cfg_hw, ptr %129, i32 0, i32 14, i32 0, i32 3
  br label %135

131:                                              ; preds = %84
  %132 = load ptr, ptr @mdp5_cfg, align 4
  %133 = getelementptr %struct.mdp5_cfg_hw, ptr %132, i32 0, i32 14, i32 0, i32 4
  br label %135

134:                                              ; preds = %84
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1763, 0\0A.popsection", ""() #4, !srcloc !8
  unreachable

135:                                              ; preds = %131, %128, %125, %122, %119
  %136 = phi ptr [ %133, %131 ], [ %130, %128 ], [ %127, %125 ], [ %124, %122 ], [ %121, %119 ]
  %137 = load i32, ptr %136, align 4
  %138 = add i32 %137, 8
  %139 = load i16, ptr %31, align 4
  %140 = zext i16 %139 to i32
  %141 = load i16, ptr %28, align 2
  %142 = zext i16 %141 to i32
  %143 = sub nsw i32 %140, %142
  %144 = and i32 %143, 65535
  %145 = load i16, ptr %34, align 2
  %146 = zext i16 %145 to i32
  %147 = shl nuw i32 %146, 16
  %148 = or i32 %144, %147
  %149 = getelementptr inbounds %struct.mdp5_kms, ptr %19, i32 0, i32 26
  %150 = load i32, ptr %149, align 8
  %151 = icmp slt i32 %150, 1
  br i1 %151, label %152, label %153, !prof !9

152:                                              ; preds = %135
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 169, i32 noundef 9, ptr noundef null) #4
  br label %153

153:                                              ; preds = %152, %135
  %154 = getelementptr inbounds %struct.mdp5_kms, ptr %19, i32 0, i32 15
  %155 = load ptr, ptr %154, align 4
  %156 = getelementptr i8, ptr %155, i32 %138
  tail call void @msm_writel(i32 noundef %148, ptr noundef %156) #4
  switch i32 %21, label %172 [
    i32 0, label %157
    i32 1, label %160
    i32 2, label %163
    i32 3, label %166
    i32 4, label %169
  ]

157:                                              ; preds = %153
  %158 = load ptr, ptr @mdp5_cfg, align 4
  %159 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %158, i32 0, i32 14
  br label %173

160:                                              ; preds = %153
  %161 = load ptr, ptr @mdp5_cfg, align 4
  %162 = getelementptr %struct.mdp5_cfg_hw, ptr %161, i32 0, i32 14, i32 0, i32 1
  br label %173

163:                                              ; preds = %153
  %164 = load ptr, ptr @mdp5_cfg, align 4
  %165 = getelementptr %struct.mdp5_cfg_hw, ptr %164, i32 0, i32 14, i32 0, i32 2
  br label %173

166:                                              ; preds = %153
  %167 = load ptr, ptr @mdp5_cfg, align 4
  %168 = getelementptr %struct.mdp5_cfg_hw, ptr %167, i32 0, i32 14, i32 0, i32 3
  br label %173

169:                                              ; preds = %153
  %170 = load ptr, ptr @mdp5_cfg, align 4
  %171 = getelementptr %struct.mdp5_cfg_hw, ptr %170, i32 0, i32 14, i32 0, i32 4
  br label %173

172:                                              ; preds = %153
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1763, 0\0A.popsection", ""() #4, !srcloc !8
  unreachable

173:                                              ; preds = %169, %166, %163, %160, %157
  %174 = phi ptr [ %171, %169 ], [ %168, %166 ], [ %165, %163 ], [ %162, %160 ], [ %159, %157 ]
  %175 = load i32, ptr %174, align 4
  %176 = add i32 %175, 12
  %177 = load i32, ptr %149, align 8
  %178 = icmp slt i32 %177, 1
  br i1 %178, label %179, label %180, !prof !9

179:                                              ; preds = %173
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 169, i32 noundef 9, ptr noundef null) #4
  br label %180

180:                                              ; preds = %179, %173
  %181 = load ptr, ptr %154, align 4
  %182 = getelementptr i8, ptr %181, i32 %176
  tail call void @msm_writel(i32 noundef %95, ptr noundef %182) #4
  switch i32 %21, label %198 [
    i32 0, label %183
    i32 1, label %186
    i32 2, label %189
    i32 3, label %192
    i32 4, label %195
  ]

183:                                              ; preds = %180
  %184 = load ptr, ptr @mdp5_cfg, align 4
  %185 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %184, i32 0, i32 14
  br label %199

186:                                              ; preds = %180
  %187 = load ptr, ptr @mdp5_cfg, align 4
  %188 = getelementptr %struct.mdp5_cfg_hw, ptr %187, i32 0, i32 14, i32 0, i32 1
  br label %199

189:                                              ; preds = %180
  %190 = load ptr, ptr @mdp5_cfg, align 4
  %191 = getelementptr %struct.mdp5_cfg_hw, ptr %190, i32 0, i32 14, i32 0, i32 2
  br label %199

192:                                              ; preds = %180
  %193 = load ptr, ptr @mdp5_cfg, align 4
  %194 = getelementptr %struct.mdp5_cfg_hw, ptr %193, i32 0, i32 14, i32 0, i32 3
  br label %199

195:                                              ; preds = %180
  %196 = load ptr, ptr @mdp5_cfg, align 4
  %197 = getelementptr %struct.mdp5_cfg_hw, ptr %196, i32 0, i32 14, i32 0, i32 4
  br label %199

198:                                              ; preds = %180
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1763, 0\0A.popsection", ""() #4, !srcloc !8
  unreachable

199:                                              ; preds = %195, %192, %189, %186, %183
  %200 = phi ptr [ %197, %195 ], [ %194, %192 ], [ %191, %189 ], [ %188, %186 ], [ %185, %183 ]
  %201 = load i32, ptr %200, align 4
  %202 = add i32 %201, 20
  %203 = load i32, ptr %149, align 8
  %204 = icmp slt i32 %203, 1
  br i1 %204, label %205, label %206, !prof !9

205:                                              ; preds = %199
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 169, i32 noundef 9, ptr noundef null) #4
  br label %206

206:                                              ; preds = %205, %199
  %207 = load ptr, ptr %154, align 4
  %208 = getelementptr i8, ptr %207, i32 %202
  tail call void @msm_writel(i32 noundef %115, ptr noundef %208) #4
  switch i32 %21, label %224 [
    i32 0, label %209
    i32 1, label %212
    i32 2, label %215
    i32 3, label %218
    i32 4, label %221
  ]

209:                                              ; preds = %206
  %210 = load ptr, ptr @mdp5_cfg, align 4
  %211 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %210, i32 0, i32 14
  br label %225

212:                                              ; preds = %206
  %213 = load ptr, ptr @mdp5_cfg, align 4
  %214 = getelementptr %struct.mdp5_cfg_hw, ptr %213, i32 0, i32 14, i32 0, i32 1
  br label %225

215:                                              ; preds = %206
  %216 = load ptr, ptr @mdp5_cfg, align 4
  %217 = getelementptr %struct.mdp5_cfg_hw, ptr %216, i32 0, i32 14, i32 0, i32 2
  br label %225

218:                                              ; preds = %206
  %219 = load ptr, ptr @mdp5_cfg, align 4
  %220 = getelementptr %struct.mdp5_cfg_hw, ptr %219, i32 0, i32 14, i32 0, i32 3
  br label %225

221:                                              ; preds = %206
  %222 = load ptr, ptr @mdp5_cfg, align 4
  %223 = getelementptr %struct.mdp5_cfg_hw, ptr %222, i32 0, i32 14, i32 0, i32 4
  br label %225

224:                                              ; preds = %206
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1763, 0\0A.popsection", ""() #4, !srcloc !8
  unreachable

225:                                              ; preds = %221, %218, %215, %212, %209
  %226 = phi ptr [ %223, %221 ], [ %220, %218 ], [ %217, %215 ], [ %214, %212 ], [ %211, %209 ]
  %227 = load i32, ptr %226, align 4
  %228 = add i32 %227, 60
  %229 = and i32 %90, 65535
  %230 = shl i32 %116, 16
  %231 = or i32 %230, %229
  %232 = load i32, ptr %149, align 8
  %233 = icmp slt i32 %232, 1
  br i1 %233, label %234, label %235, !prof !9

234:                                              ; preds = %225
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 169, i32 noundef 9, ptr noundef null) #4
  br label %235

235:                                              ; preds = %234, %225
  %236 = load ptr, ptr %154, align 4
  %237 = getelementptr i8, ptr %236, i32 %228
  tail call void @msm_writel(i32 noundef %231, ptr noundef %237) #4
  switch i32 %21, label %253 [
    i32 0, label %238
    i32 1, label %241
    i32 2, label %244
    i32 3, label %247
    i32 4, label %250
  ]

238:                                              ; preds = %235
  %239 = load ptr, ptr @mdp5_cfg, align 4
  %240 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %239, i32 0, i32 14
  br label %254

241:                                              ; preds = %235
  %242 = load ptr, ptr @mdp5_cfg, align 4
  %243 = getelementptr %struct.mdp5_cfg_hw, ptr %242, i32 0, i32 14, i32 0, i32 1
  br label %254

244:                                              ; preds = %235
  %245 = load ptr, ptr @mdp5_cfg, align 4
  %246 = getelementptr %struct.mdp5_cfg_hw, ptr %245, i32 0, i32 14, i32 0, i32 2
  br label %254

247:                                              ; preds = %235
  %248 = load ptr, ptr @mdp5_cfg, align 4
  %249 = getelementptr %struct.mdp5_cfg_hw, ptr %248, i32 0, i32 14, i32 0, i32 3
  br label %254

250:                                              ; preds = %235
  %251 = load ptr, ptr @mdp5_cfg, align 4
  %252 = getelementptr %struct.mdp5_cfg_hw, ptr %251, i32 0, i32 14, i32 0, i32 4
  br label %254

253:                                              ; preds = %235
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1763, 0\0A.popsection", ""() #4, !srcloc !8
  unreachable

254:                                              ; preds = %250, %247, %244, %241, %238
  %255 = phi ptr [ %252, %250 ], [ %249, %247 ], [ %246, %244 ], [ %243, %241 ], [ %240, %238 ]
  %256 = load i32, ptr %255, align 4
  %257 = add i32 %256, 28
  %258 = load i32, ptr %149, align 8
  %259 = icmp slt i32 %258, 1
  br i1 %259, label %260, label %261, !prof !9

260:                                              ; preds = %254
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 169, i32 noundef 9, ptr noundef null) #4
  br label %261

261:                                              ; preds = %260, %254
  %262 = load ptr, ptr %154, align 4
  %263 = getelementptr i8, ptr %262, i32 %257
  tail call void @msm_writel(i32 noundef %107, ptr noundef %263) #4
  switch i32 %21, label %279 [
    i32 0, label %264
    i32 1, label %267
    i32 2, label %270
    i32 3, label %273
    i32 4, label %276
  ]

264:                                              ; preds = %261
  %265 = load ptr, ptr @mdp5_cfg, align 4
  %266 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %265, i32 0, i32 14
  br label %280

267:                                              ; preds = %261
  %268 = load ptr, ptr @mdp5_cfg, align 4
  %269 = getelementptr %struct.mdp5_cfg_hw, ptr %268, i32 0, i32 14, i32 0, i32 1
  br label %280

270:                                              ; preds = %261
  %271 = load ptr, ptr @mdp5_cfg, align 4
  %272 = getelementptr %struct.mdp5_cfg_hw, ptr %271, i32 0, i32 14, i32 0, i32 2
  br label %280

273:                                              ; preds = %261
  %274 = load ptr, ptr @mdp5_cfg, align 4
  %275 = getelementptr %struct.mdp5_cfg_hw, ptr %274, i32 0, i32 14, i32 0, i32 3
  br label %280

276:                                              ; preds = %261
  %277 = load ptr, ptr @mdp5_cfg, align 4
  %278 = getelementptr %struct.mdp5_cfg_hw, ptr %277, i32 0, i32 14, i32 0, i32 4
  br label %280

279:                                              ; preds = %261
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1763, 0\0A.popsection", ""() #4, !srcloc !8
  unreachable

280:                                              ; preds = %276, %273, %270, %267, %264
  %281 = phi ptr [ %278, %276 ], [ %275, %273 ], [ %272, %270 ], [ %269, %267 ], [ %266, %264 ]
  %282 = load i32, ptr %281, align 4
  %283 = add i32 %282, 36
  %284 = load i32, ptr %149, align 8
  %285 = icmp slt i32 %284, 1
  br i1 %285, label %286, label %287, !prof !9

286:                                              ; preds = %280
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 169, i32 noundef 9, ptr noundef null) #4
  br label %287

287:                                              ; preds = %286, %280
  %288 = load ptr, ptr %154, align 4
  %289 = getelementptr i8, ptr %288, i32 %283
  tail call void @msm_writel(i32 noundef %112, ptr noundef %289) #4
  switch i32 %21, label %305 [
    i32 0, label %290
    i32 1, label %293
    i32 2, label %296
    i32 3, label %299
    i32 4, label %302
  ]

290:                                              ; preds = %287
  %291 = load ptr, ptr @mdp5_cfg, align 4
  %292 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %291, i32 0, i32 14
  br label %306

293:                                              ; preds = %287
  %294 = load ptr, ptr @mdp5_cfg, align 4
  %295 = getelementptr %struct.mdp5_cfg_hw, ptr %294, i32 0, i32 14, i32 0, i32 1
  br label %306

296:                                              ; preds = %287
  %297 = load ptr, ptr @mdp5_cfg, align 4
  %298 = getelementptr %struct.mdp5_cfg_hw, ptr %297, i32 0, i32 14, i32 0, i32 2
  br label %306

299:                                              ; preds = %287
  %300 = load ptr, ptr @mdp5_cfg, align 4
  %301 = getelementptr %struct.mdp5_cfg_hw, ptr %300, i32 0, i32 14, i32 0, i32 3
  br label %306

302:                                              ; preds = %287
  %303 = load ptr, ptr @mdp5_cfg, align 4
  %304 = getelementptr %struct.mdp5_cfg_hw, ptr %303, i32 0, i32 14, i32 0, i32 4
  br label %306

305:                                              ; preds = %287
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1763, 0\0A.popsection", ""() #4, !srcloc !8
  unreachable

306:                                              ; preds = %302, %299, %296, %293, %290
  %307 = phi ptr [ %304, %302 ], [ %301, %299 ], [ %298, %296 ], [ %295, %293 ], [ %292, %290 ]
  %308 = load i32, ptr %307, align 4
  %309 = add i32 %308, 68
  %310 = load i32, ptr %149, align 8
  %311 = icmp slt i32 %310, 1
  br i1 %311, label %312, label %313, !prof !9

312:                                              ; preds = %306
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 169, i32 noundef 9, ptr noundef null) #4
  br label %313

313:                                              ; preds = %312, %306
  %314 = load ptr, ptr %154, align 4
  %315 = getelementptr i8, ptr %314, i32 %309
  tail call void @msm_writel(i32 noundef 0, ptr noundef %315) #4
  switch i32 %21, label %331 [
    i32 0, label %316
    i32 1, label %319
    i32 2, label %322
    i32 3, label %325
    i32 4, label %328
  ]

316:                                              ; preds = %313
  %317 = load ptr, ptr @mdp5_cfg, align 4
  %318 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %317, i32 0, i32 14
  br label %332

319:                                              ; preds = %313
  %320 = load ptr, ptr @mdp5_cfg, align 4
  %321 = getelementptr %struct.mdp5_cfg_hw, ptr %320, i32 0, i32 14, i32 0, i32 1
  br label %332

322:                                              ; preds = %313
  %323 = load ptr, ptr @mdp5_cfg, align 4
  %324 = getelementptr %struct.mdp5_cfg_hw, ptr %323, i32 0, i32 14, i32 0, i32 2
  br label %332

325:                                              ; preds = %313
  %326 = load ptr, ptr @mdp5_cfg, align 4
  %327 = getelementptr %struct.mdp5_cfg_hw, ptr %326, i32 0, i32 14, i32 0, i32 3
  br label %332

328:                                              ; preds = %313
  %329 = load ptr, ptr @mdp5_cfg, align 4
  %330 = getelementptr %struct.mdp5_cfg_hw, ptr %329, i32 0, i32 14, i32 0, i32 4
  br label %332

331:                                              ; preds = %313
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1763, 0\0A.popsection", ""() #4, !srcloc !8
  unreachable

332:                                              ; preds = %328, %325, %322, %319, %316
  %333 = phi ptr [ %330, %328 ], [ %327, %325 ], [ %324, %322 ], [ %321, %319 ], [ %318, %316 ]
  %334 = load i32, ptr %333, align 4
  %335 = add i32 %334, 72
  %336 = load i32, ptr %149, align 8
  %337 = icmp slt i32 %336, 1
  br i1 %337, label %338, label %339, !prof !9

338:                                              ; preds = %332
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 169, i32 noundef 9, ptr noundef null) #4
  br label %339

339:                                              ; preds = %338, %332
  %340 = load ptr, ptr %154, align 4
  %341 = getelementptr i8, ptr %340, i32 %335
  tail call void @msm_writel(i32 noundef 255, ptr noundef %341) #4
  switch i32 %21, label %357 [
    i32 0, label %342
    i32 1, label %345
    i32 2, label %348
    i32 3, label %351
    i32 4, label %354
  ]

342:                                              ; preds = %339
  %343 = load ptr, ptr @mdp5_cfg, align 4
  %344 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %343, i32 0, i32 14
  br label %358

345:                                              ; preds = %339
  %346 = load ptr, ptr @mdp5_cfg, align 4
  %347 = getelementptr %struct.mdp5_cfg_hw, ptr %346, i32 0, i32 14, i32 0, i32 1
  br label %358

348:                                              ; preds = %339
  %349 = load ptr, ptr @mdp5_cfg, align 4
  %350 = getelementptr %struct.mdp5_cfg_hw, ptr %349, i32 0, i32 14, i32 0, i32 2
  br label %358

351:                                              ; preds = %339
  %352 = load ptr, ptr @mdp5_cfg, align 4
  %353 = getelementptr %struct.mdp5_cfg_hw, ptr %352, i32 0, i32 14, i32 0, i32 3
  br label %358

354:                                              ; preds = %339
  %355 = load ptr, ptr @mdp5_cfg, align 4
  %356 = getelementptr %struct.mdp5_cfg_hw, ptr %355, i32 0, i32 14, i32 0, i32 4
  br label %358

357:                                              ; preds = %339
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1763, 0\0A.popsection", ""() #4, !srcloc !8
  unreachable

358:                                              ; preds = %354, %351, %348, %345, %342
  %359 = phi ptr [ %356, %354 ], [ %353, %351 ], [ %350, %348 ], [ %347, %345 ], [ %344, %342 ]
  %360 = load i32, ptr %359, align 4
  %361 = add i32 %360, 76
  %362 = load i32, ptr %149, align 8
  %363 = icmp slt i32 %362, 1
  br i1 %363, label %364, label %365, !prof !9

364:                                              ; preds = %358
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 169, i32 noundef 9, ptr noundef null) #4
  br label %365

365:                                              ; preds = %364, %358
  %366 = load ptr, ptr %154, align 4
  %367 = getelementptr i8, ptr %366, i32 %361
  tail call void @msm_writel(i32 noundef 0, ptr noundef %367) #4
  switch i32 %21, label %383 [
    i32 0, label %368
    i32 1, label %371
    i32 2, label %374
    i32 3, label %377
    i32 4, label %380
  ]

368:                                              ; preds = %365
  %369 = load ptr, ptr @mdp5_cfg, align 4
  %370 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %369, i32 0, i32 14
  br label %384

371:                                              ; preds = %365
  %372 = load ptr, ptr @mdp5_cfg, align 4
  %373 = getelementptr %struct.mdp5_cfg_hw, ptr %372, i32 0, i32 14, i32 0, i32 1
  br label %384

374:                                              ; preds = %365
  %375 = load ptr, ptr @mdp5_cfg, align 4
  %376 = getelementptr %struct.mdp5_cfg_hw, ptr %375, i32 0, i32 14, i32 0, i32 2
  br label %384

377:                                              ; preds = %365
  %378 = load ptr, ptr @mdp5_cfg, align 4
  %379 = getelementptr %struct.mdp5_cfg_hw, ptr %378, i32 0, i32 14, i32 0, i32 3
  br label %384

380:                                              ; preds = %365
  %381 = load ptr, ptr @mdp5_cfg, align 4
  %382 = getelementptr %struct.mdp5_cfg_hw, ptr %381, i32 0, i32 14, i32 0, i32 4
  br label %384

383:                                              ; preds = %365
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1763, 0\0A.popsection", ""() #4, !srcloc !8
  unreachable

384:                                              ; preds = %380, %377, %374, %371, %368
  %385 = phi ptr [ %382, %380 ], [ %379, %377 ], [ %376, %374 ], [ %373, %371 ], [ %370, %368 ]
  %386 = load i32, ptr %385, align 4
  %387 = add i32 %386, 80
  %388 = load i32, ptr %149, align 8
  %389 = icmp slt i32 %388, 1
  br i1 %389, label %390, label %391, !prof !9

390:                                              ; preds = %384
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 169, i32 noundef 9, ptr noundef null) #4
  br label %391

391:                                              ; preds = %390, %384
  %392 = load ptr, ptr %154, align 4
  %393 = getelementptr i8, ptr %392, i32 %387
  tail call void @msm_writel(i32 noundef %66, ptr noundef %393) #4
  switch i32 %21, label %409 [
    i32 0, label %394
    i32 1, label %397
    i32 2, label %400
    i32 3, label %403
    i32 4, label %406
  ]

394:                                              ; preds = %391
  %395 = load ptr, ptr @mdp5_cfg, align 4
  %396 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %395, i32 0, i32 14
  br label %410

397:                                              ; preds = %391
  %398 = load ptr, ptr @mdp5_cfg, align 4
  %399 = getelementptr %struct.mdp5_cfg_hw, ptr %398, i32 0, i32 14, i32 0, i32 1
  br label %410

400:                                              ; preds = %391
  %401 = load ptr, ptr @mdp5_cfg, align 4
  %402 = getelementptr %struct.mdp5_cfg_hw, ptr %401, i32 0, i32 14, i32 0, i32 2
  br label %410

403:                                              ; preds = %391
  %404 = load ptr, ptr @mdp5_cfg, align 4
  %405 = getelementptr %struct.mdp5_cfg_hw, ptr %404, i32 0, i32 14, i32 0, i32 3
  br label %410

406:                                              ; preds = %391
  %407 = load ptr, ptr @mdp5_cfg, align 4
  %408 = getelementptr %struct.mdp5_cfg_hw, ptr %407, i32 0, i32 14, i32 0, i32 4
  br label %410

409:                                              ; preds = %391
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1763, 0\0A.popsection", ""() #4, !srcloc !8
  unreachable

410:                                              ; preds = %406, %403, %400, %397, %394
  %411 = phi ptr [ %408, %406 ], [ %405, %403 ], [ %402, %400 ], [ %399, %397 ], [ %396, %394 ]
  %412 = load i32, ptr %411, align 4
  %413 = add i32 %412, 64
  %414 = load i32, ptr %149, align 8
  %415 = icmp slt i32 %414, 1
  br i1 %415, label %416, label %417, !prof !9

416:                                              ; preds = %410
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 169, i32 noundef 9, ptr noundef null) #4
  br label %417

417:                                              ; preds = %416, %410
  %418 = load ptr, ptr %154, align 4
  %419 = getelementptr i8, ptr %418, i32 %413
  tail call void @msm_writel(i32 noundef 0, ptr noundef %419) #4
  switch i32 %21, label %435 [
    i32 0, label %420
    i32 1, label %423
    i32 2, label %426
    i32 3, label %429
    i32 4, label %432
  ]

420:                                              ; preds = %417
  %421 = load ptr, ptr @mdp5_cfg, align 4
  %422 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %421, i32 0, i32 14
  br label %436

423:                                              ; preds = %417
  %424 = load ptr, ptr @mdp5_cfg, align 4
  %425 = getelementptr %struct.mdp5_cfg_hw, ptr %424, i32 0, i32 14, i32 0, i32 1
  br label %436

426:                                              ; preds = %417
  %427 = load ptr, ptr @mdp5_cfg, align 4
  %428 = getelementptr %struct.mdp5_cfg_hw, ptr %427, i32 0, i32 14, i32 0, i32 2
  br label %436

429:                                              ; preds = %417
  %430 = load ptr, ptr @mdp5_cfg, align 4
  %431 = getelementptr %struct.mdp5_cfg_hw, ptr %430, i32 0, i32 14, i32 0, i32 3
  br label %436

432:                                              ; preds = %417
  %433 = load ptr, ptr @mdp5_cfg, align 4
  %434 = getelementptr %struct.mdp5_cfg_hw, ptr %433, i32 0, i32 14, i32 0, i32 4
  br label %436

435:                                              ; preds = %417
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1763, 0\0A.popsection", ""() #4, !srcloc !8
  unreachable

436:                                              ; preds = %432, %429, %426, %423, %420
  %437 = phi ptr [ %434, %432 ], [ %431, %429 ], [ %428, %426 ], [ %425, %423 ], [ %422, %420 ]
  %438 = load i32, ptr %437, align 4
  %439 = add i32 %438, 44
  %440 = load i32, ptr %149, align 8
  %441 = icmp slt i32 %440, 1
  br i1 %441, label %442, label %443, !prof !9

442:                                              ; preds = %436
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 169, i32 noundef 9, ptr noundef null) #4
  br label %443

443:                                              ; preds = %442, %436
  %444 = load ptr, ptr %154, align 4
  %445 = getelementptr i8, ptr %444, i32 %439
  tail call void @msm_writel(i32 noundef 0, ptr noundef %445) #4
  switch i32 %21, label %461 [
    i32 0, label %446
    i32 1, label %449
    i32 2, label %452
    i32 3, label %455
    i32 4, label %458
  ]

446:                                              ; preds = %443
  %447 = load ptr, ptr @mdp5_cfg, align 4
  %448 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %447, i32 0, i32 14
  br label %462

449:                                              ; preds = %443
  %450 = load ptr, ptr @mdp5_cfg, align 4
  %451 = getelementptr %struct.mdp5_cfg_hw, ptr %450, i32 0, i32 14, i32 0, i32 1
  br label %462

452:                                              ; preds = %443
  %453 = load ptr, ptr @mdp5_cfg, align 4
  %454 = getelementptr %struct.mdp5_cfg_hw, ptr %453, i32 0, i32 14, i32 0, i32 2
  br label %462

455:                                              ; preds = %443
  %456 = load ptr, ptr @mdp5_cfg, align 4
  %457 = getelementptr %struct.mdp5_cfg_hw, ptr %456, i32 0, i32 14, i32 0, i32 3
  br label %462

458:                                              ; preds = %443
  %459 = load ptr, ptr @mdp5_cfg, align 4
  %460 = getelementptr %struct.mdp5_cfg_hw, ptr %459, i32 0, i32 14, i32 0, i32 4
  br label %462

461:                                              ; preds = %443
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1763, 0\0A.popsection", ""() #4, !srcloc !8
  unreachable

462:                                              ; preds = %458, %455, %452, %449, %446
  %463 = phi ptr [ %460, %458 ], [ %457, %455 ], [ %454, %452 ], [ %451, %449 ], [ %448, %446 ]
  %464 = load i32, ptr %463, align 4
  %465 = add i32 %464, 52
  %466 = load i32, ptr %149, align 8
  %467 = icmp slt i32 %466, 1
  br i1 %467, label %468, label %469, !prof !9

468:                                              ; preds = %462
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 169, i32 noundef 9, ptr noundef null) #4
  br label %469

469:                                              ; preds = %468, %462
  %470 = load ptr, ptr %154, align 4
  %471 = getelementptr i8, ptr %470, i32 %465
  tail call void @msm_writel(i32 noundef 0, ptr noundef %471) #4
  switch i32 %21, label %487 [
    i32 0, label %472
    i32 1, label %475
    i32 2, label %478
    i32 3, label %481
    i32 4, label %484
  ]

472:                                              ; preds = %469
  %473 = load ptr, ptr @mdp5_cfg, align 4
  %474 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %473, i32 0, i32 14
  br label %488

475:                                              ; preds = %469
  %476 = load ptr, ptr @mdp5_cfg, align 4
  %477 = getelementptr %struct.mdp5_cfg_hw, ptr %476, i32 0, i32 14, i32 0, i32 1
  br label %488

478:                                              ; preds = %469
  %479 = load ptr, ptr @mdp5_cfg, align 4
  %480 = getelementptr %struct.mdp5_cfg_hw, ptr %479, i32 0, i32 14, i32 0, i32 2
  br label %488

481:                                              ; preds = %469
  %482 = load ptr, ptr @mdp5_cfg, align 4
  %483 = getelementptr %struct.mdp5_cfg_hw, ptr %482, i32 0, i32 14, i32 0, i32 3
  br label %488

484:                                              ; preds = %469
  %485 = load ptr, ptr @mdp5_cfg, align 4
  %486 = getelementptr %struct.mdp5_cfg_hw, ptr %485, i32 0, i32 14, i32 0, i32 4
  br label %488

487:                                              ; preds = %469
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1763, 0\0A.popsection", ""() #4, !srcloc !8
  unreachable

488:                                              ; preds = %484, %481, %478, %475, %472
  %489 = phi ptr [ %486, %484 ], [ %483, %481 ], [ %480, %478 ], [ %477, %475 ], [ %474, %472 ]
  %490 = load i32, ptr %489, align 4
  %491 = add i32 %490, 144
  %492 = load i32, ptr %149, align 8
  %493 = icmp slt i32 %492, 1
  br i1 %493, label %494, label %495, !prof !9

494:                                              ; preds = %488
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 169, i32 noundef 9, ptr noundef null) #4
  br label %495

495:                                              ; preds = %494, %488
  %496 = load ptr, ptr %154, align 4
  %497 = getelementptr i8, ptr %496, i32 %491
  tail call void @msm_writel(i32 noundef %85, ptr noundef %497) #4
  switch i32 %21, label %513 [
    i32 0, label %498
    i32 1, label %501
    i32 2, label %504
    i32 3, label %507
    i32 4, label %510
  ]

498:                                              ; preds = %495
  %499 = load ptr, ptr @mdp5_cfg, align 4
  %500 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %499, i32 0, i32 14
  br label %514

501:                                              ; preds = %495
  %502 = load ptr, ptr @mdp5_cfg, align 4
  %503 = getelementptr %struct.mdp5_cfg_hw, ptr %502, i32 0, i32 14, i32 0, i32 1
  br label %514

504:                                              ; preds = %495
  %505 = load ptr, ptr @mdp5_cfg, align 4
  %506 = getelementptr %struct.mdp5_cfg_hw, ptr %505, i32 0, i32 14, i32 0, i32 2
  br label %514

507:                                              ; preds = %495
  %508 = load ptr, ptr @mdp5_cfg, align 4
  %509 = getelementptr %struct.mdp5_cfg_hw, ptr %508, i32 0, i32 14, i32 0, i32 3
  br label %514

510:                                              ; preds = %495
  %511 = load ptr, ptr @mdp5_cfg, align 4
  %512 = getelementptr %struct.mdp5_cfg_hw, ptr %511, i32 0, i32 14, i32 0, i32 4
  br label %514

513:                                              ; preds = %495
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1763, 0\0A.popsection", ""() #4, !srcloc !8
  unreachable

514:                                              ; preds = %510, %507, %504, %501, %498
  %515 = phi ptr [ %512, %510 ], [ %509, %507 ], [ %506, %504 ], [ %503, %501 ], [ %500, %498 ]
  %516 = load i32, ptr %515, align 4
  %517 = load i32, ptr %149, align 8
  %518 = icmp slt i32 %517, 1
  br i1 %518, label %519, label %520, !prof !9

519:                                              ; preds = %514
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 169, i32 noundef 9, ptr noundef null) #4
  br label %520

520:                                              ; preds = %519, %514
  %521 = add i32 %516, 168
  %522 = load ptr, ptr %154, align 4
  %523 = getelementptr i8, ptr %522, i32 %521
  tail call void @msm_writel(i32 noundef 3, ptr noundef %523) #4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %117, i32 noundef %118) #4
  %524 = load ptr, ptr %4, align 4
  tail call void @mdp5_crtc_set_pipeline(ptr noundef %524) #4
  br label %525

525:                                              ; preds = %520, %12
  %526 = load i32, ptr %9, align 4
  %527 = icmp eq i32 %526, 2
  br i1 %527, label %528, label %529

528:                                              ; preds = %525
  tail call void @mdp5_cmd_encoder_enable(ptr noundef %0) #4
  br label %579

529:                                              ; preds = %525
  %530 = load ptr, ptr %0, align 4
  %531 = getelementptr inbounds %struct.drm_device, ptr %530, i32 0, i32 5
  %532 = load ptr, ptr %531, align 4
  %533 = getelementptr inbounds %struct.msm_drm_private, ptr %532, i32 0, i32 1
  %534 = load ptr, ptr %533, align 4
  %535 = getelementptr inbounds %struct.mdp5_encoder, ptr %0, i32 0, i32 5
  %536 = load ptr, ptr %535, align 4
  %537 = load ptr, ptr %2, align 4
  %538 = load ptr, ptr %4, align 4
  %539 = tail call ptr @mdp5_crtc_get_pipeline(ptr noundef %538) #4
  %540 = getelementptr inbounds %struct.mdp5_encoder, ptr %0, i32 0, i32 2
  %541 = load i8, ptr %540, align 4, !range !11
  %542 = icmp eq i8 %541, 0
  br i1 %542, label %544, label %543, !prof !10

543:                                              ; preds = %529
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 175, i32 noundef 9, ptr noundef null) #4
  br label %579

544:                                              ; preds = %529
  %545 = getelementptr inbounds %struct.mdp5_interface, ptr %537, i32 0, i32 1
  %546 = load i32, ptr %545, align 4
  %547 = getelementptr inbounds %struct.mdp5_encoder, ptr %0, i32 0, i32 1
  %548 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %547) #4
  switch i32 %546, label %564 [
    i32 0, label %549
    i32 1, label %552
    i32 2, label %555
    i32 3, label %558
    i32 4, label %561
  ]

549:                                              ; preds = %544
  %550 = load ptr, ptr @mdp5_cfg, align 4
  %551 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %550, i32 0, i32 14
  br label %565

552:                                              ; preds = %544
  %553 = load ptr, ptr @mdp5_cfg, align 4
  %554 = getelementptr %struct.mdp5_cfg_hw, ptr %553, i32 0, i32 14, i32 0, i32 1
  br label %565

555:                                              ; preds = %544
  %556 = load ptr, ptr @mdp5_cfg, align 4
  %557 = getelementptr %struct.mdp5_cfg_hw, ptr %556, i32 0, i32 14, i32 0, i32 2
  br label %565

558:                                              ; preds = %544
  %559 = load ptr, ptr @mdp5_cfg, align 4
  %560 = getelementptr %struct.mdp5_cfg_hw, ptr %559, i32 0, i32 14, i32 0, i32 3
  br label %565

561:                                              ; preds = %544
  %562 = load ptr, ptr @mdp5_cfg, align 4
  %563 = getelementptr %struct.mdp5_cfg_hw, ptr %562, i32 0, i32 14, i32 0, i32 4
  br label %565

564:                                              ; preds = %544
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1763, 0\0A.popsection", ""() #4, !srcloc !8
  unreachable

565:                                              ; preds = %561, %558, %555, %552, %549
  %566 = phi ptr [ %563, %561 ], [ %560, %558 ], [ %557, %555 ], [ %554, %552 ], [ %551, %549 ]
  %567 = load i32, ptr %566, align 4
  %568 = getelementptr inbounds %struct.mdp5_kms, ptr %534, i32 0, i32 26
  %569 = load i32, ptr %568, align 8
  %570 = icmp slt i32 %569, 1
  br i1 %570, label %571, label %572, !prof !9

571:                                              ; preds = %565
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 169, i32 noundef 9, ptr noundef null) #4
  br label %572

572:                                              ; preds = %571, %565
  %573 = getelementptr inbounds %struct.mdp5_kms, ptr %534, i32 0, i32 15
  %574 = load ptr, ptr %573, align 4
  %575 = getelementptr i8, ptr %574, i32 %567
  tail call void @msm_writel(i32 noundef 1, ptr noundef %575) #4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %547, i32 noundef %548) #4
  %576 = tail call i32 @mdp_ctl_flush_mask_encoder(ptr noundef %537) #4
  %577 = tail call i32 @mdp5_ctl_commit(ptr noundef %536, ptr noundef %539, i32 noundef %576, i1 noundef zeroext true) #4
  %578 = tail call i32 @mdp5_ctl_set_encoder_state(ptr noundef %536, ptr noundef %539, i1 noundef zeroext true) #4
  store i8 1, ptr %540, align 4
  br label %579

579:                                              ; preds = %572, %543, %528
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @mdp5_encoder_atomic_check(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readnone %2) #3 {
  %4 = getelementptr inbounds %struct.mdp5_encoder, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mdp5_encoder, ptr %0, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.mdp5_crtc_state, ptr %1, i32 0, i32 1
  store ptr %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.mdp5_crtc_state, ptr %1, i32 0, i32 2
  store ptr %5, ptr %9, align 4
  %10 = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 3
  %11 = load i8, ptr %10, align 2
  %12 = and i8 %11, 14
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.mdp5_crtc_state, ptr %1, i32 0, i32 7
  store i8 1, ptr %15, align 1
  br label %16

16:                                               ; preds = %14, %3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdp5_cmd_encoder_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdp5_crtc_get_pipeline(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdp5_crtc_get_mixer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdp5_ctl_set_encoder_state(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdp5_ctl_commit(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdp_ctl_flush_mask_encoder(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdp_irq_wait(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdp5_cmd_encoder_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdp5_cmd_encoder_mode_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_vrefresh(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdp5_crtc_set_pipeline(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_encoder_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind allocsize(2) }

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
!8 = !{i64 2155705292, i64 2155705798, i64 2155705329, i64 2155705385, i64 2155705419, i64 2155705443, i64 2155705484, i64 2155705505, i64 2155705533, i64 2155705567}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i8 0, i8 2}
