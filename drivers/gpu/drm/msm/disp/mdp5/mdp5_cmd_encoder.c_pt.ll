; ModuleID = '/llk/IR/drivers/gpu/drm/msm/disp/mdp5/mdp5_cmd_encoder.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/disp/mdp5/mdp5_cmd_encoder.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.list_head = type { ptr, ptr }
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
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.mdp5_hw_mixer = type { i32, ptr, i32, i32, i32, i32, i32 }
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
%struct.mdp5_encoder = type { %struct.drm_encoder, %struct.spinlock, i8, i32, ptr, ptr }
%struct.mdp5_interface = type { i32, i32, i32, i32 }
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

@.str = private unnamed_addr constant [57 x i8] c"set mode: \22%s\22: %d %d %d %d %d %d %d %d %d %d 0x%x 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"drivers/gpu/drm/msm/disp/mdp5/mdp5_cmd_encoder.c\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"*ERROR* vsync_clk is not initialized\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"*ERROR* %s: vtotal(%d) or vrefresh(%d) is 0\0A\00", align 1
@__func__.pingpong_tearcheck_setup = private unnamed_addr constant [25 x i8] c"pingpong_tearcheck_setup\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"*ERROR* vsync_clk round rate failed %ld\0A\00", align 1
@mdp5_cfg = external dso_local local_unnamed_addr global ptr, align 4
@.str.6 = private unnamed_addr constant [43 x i8] c"*ERROR* vsync_clk clk_set_rate failed, %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"*ERROR* vsync_clk clk_prepare_enable failed, %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.h\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mdp5_cmd_encoder_mode_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 31
  %5 = tail call i32 @drm_mode_vrefresh(ptr noundef %2) #2
  %6 = load i32, ptr %2, align 4
  %7 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 1
  %8 = load i16, ptr %7, align 4
  %9 = zext i16 %8 to i32
  %10 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 2
  %11 = load i16, ptr %10, align 2
  %12 = zext i16 %11 to i32
  %13 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 3
  %14 = load i16, ptr %13, align 4
  %15 = zext i16 %14 to i32
  %16 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 4
  %17 = load i16, ptr %16, align 2
  %18 = zext i16 %17 to i32
  %19 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 6
  %20 = load i16, ptr %19, align 2
  %21 = zext i16 %20 to i32
  %22 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 7
  %23 = load i16, ptr %22, align 4
  %24 = zext i16 %23 to i32
  %25 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 8
  %26 = load i16, ptr %25, align 2
  %27 = zext i16 %26 to i32
  %28 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 9
  %29 = load i16, ptr %28, align 4
  %30 = zext i16 %29 to i32
  %31 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 28
  %32 = load i8, ptr %31, align 2
  %33 = zext i8 %32 to i32
  %34 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 11
  %35 = load i32, ptr %34, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %9, i32 noundef %12, i32 noundef %15, i32 noundef %18, i32 noundef %21, i32 noundef %24, i32 noundef %27, i32 noundef %30, i32 noundef %33, i32 noundef %35) #2
  %36 = load ptr, ptr %0, align 4
  %37 = getelementptr inbounds %struct.drm_device, ptr %36, i32 0, i32 5
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.msm_drm_private, ptr %38, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.drm_device, ptr %36, i32 0, i32 2
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.drm_encoder, ptr %0, i32 0, i32 8
  %44 = load ptr, ptr %43, align 4
  %45 = tail call ptr @mdp5_crtc_get_mixer(ptr noundef %44) #2
  %46 = getelementptr inbounds %struct.mdp5_hw_mixer, ptr %45, i32 0, i32 4
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds %struct.mdp5_kms, ptr %40, i32 0, i32 22
  %49 = load ptr, ptr %48, align 8
  %50 = icmp eq ptr %49, null
  %51 = icmp ugt ptr %49, inttoptr (i32 -4096 to ptr)
  %52 = or i1 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %3
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %42, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #2
  br label %246

54:                                               ; preds = %3
  %55 = load i16, ptr %28, align 4
  %56 = zext i16 %55 to i32
  %57 = tail call i32 @drm_mode_vrefresh(ptr noundef %2) #2
  %58 = mul i32 %57, %56
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = load i16, ptr %28, align 4
  %62 = zext i16 %61 to i32
  %63 = tail call i32 @drm_mode_vrefresh(ptr noundef %2) #2
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %42, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.pingpong_tearcheck_setup, i32 noundef %62, i32 noundef %63) #2
  br label %246

64:                                               ; preds = %54
  %65 = load ptr, ptr %48, align 8
  %66 = tail call i32 @clk_round_rate(ptr noundef %65, i32 noundef 19200000) #2
  %67 = icmp slt i32 %66, 1
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %42, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.5, i32 noundef %66) #2
  br label %246

69:                                               ; preds = %64
  %70 = udiv i32 %66, %58
  %71 = and i32 %70, 524287
  %72 = or i32 %71, 1572864
  switch i32 %47, label %85 [
    i32 0, label %73
    i32 1, label %76
    i32 2, label %79
    i32 3, label %82
  ]

73:                                               ; preds = %69
  %74 = load ptr, ptr @mdp5_cfg, align 4
  %75 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %74, i32 0, i32 11, i32 1
  br label %86

76:                                               ; preds = %69
  %77 = load ptr, ptr @mdp5_cfg, align 4
  %78 = getelementptr %struct.mdp5_cfg_hw, ptr %77, i32 0, i32 11, i32 1, i32 1
  br label %86

79:                                               ; preds = %69
  %80 = load ptr, ptr @mdp5_cfg, align 4
  %81 = getelementptr %struct.mdp5_cfg_hw, ptr %80, i32 0, i32 11, i32 1, i32 2
  br label %86

82:                                               ; preds = %69
  %83 = load ptr, ptr @mdp5_cfg, align 4
  %84 = getelementptr %struct.mdp5_cfg_hw, ptr %83, i32 0, i32 11, i32 1, i32 3
  br label %86

85:                                               ; preds = %69
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1322, 0\0A.popsection", ""() #2, !srcloc !8
  unreachable

86:                                               ; preds = %82, %79, %76, %73
  %87 = phi ptr [ %84, %82 ], [ %81, %79 ], [ %78, %76 ], [ %75, %73 ]
  %88 = load i32, ptr %87, align 4
  %89 = add i32 %88, 4
  %90 = getelementptr inbounds %struct.mdp5_kms, ptr %40, i32 0, i32 26
  %91 = load i32, ptr %90, align 8
  %92 = icmp slt i32 %91, 1
  br i1 %92, label %93, label %94, !prof !9

93:                                               ; preds = %86
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 169, i32 noundef 9, ptr noundef null) #2
  br label %94

94:                                               ; preds = %93, %86
  %95 = getelementptr inbounds %struct.mdp5_kms, ptr %40, i32 0, i32 15
  %96 = load ptr, ptr %95, align 4
  %97 = getelementptr i8, ptr %96, i32 %89
  tail call void @msm_writel(i32 noundef %72, ptr noundef %97) #2
  switch i32 %47, label %110 [
    i32 0, label %98
    i32 1, label %101
    i32 2, label %104
    i32 3, label %107
  ]

98:                                               ; preds = %94
  %99 = load ptr, ptr @mdp5_cfg, align 4
  %100 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %99, i32 0, i32 11, i32 1
  br label %111

101:                                              ; preds = %94
  %102 = load ptr, ptr @mdp5_cfg, align 4
  %103 = getelementptr %struct.mdp5_cfg_hw, ptr %102, i32 0, i32 11, i32 1, i32 1
  br label %111

104:                                              ; preds = %94
  %105 = load ptr, ptr @mdp5_cfg, align 4
  %106 = getelementptr %struct.mdp5_cfg_hw, ptr %105, i32 0, i32 11, i32 1, i32 2
  br label %111

107:                                              ; preds = %94
  %108 = load ptr, ptr @mdp5_cfg, align 4
  %109 = getelementptr %struct.mdp5_cfg_hw, ptr %108, i32 0, i32 11, i32 1, i32 3
  br label %111

110:                                              ; preds = %94
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1322, 0\0A.popsection", ""() #2, !srcloc !8
  unreachable

111:                                              ; preds = %107, %104, %101, %98
  %112 = phi ptr [ %109, %107 ], [ %106, %104 ], [ %103, %101 ], [ %100, %98 ]
  %113 = load i32, ptr %112, align 4
  %114 = add i32 %113, 8
  %115 = load i16, ptr %28, align 4
  %116 = zext i16 %115 to i32
  %117 = shl nuw nsw i32 %116, 1
  %118 = load i32, ptr %90, align 8
  %119 = icmp slt i32 %118, 1
  br i1 %119, label %120, label %121, !prof !9

120:                                              ; preds = %111
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 169, i32 noundef 9, ptr noundef null) #2
  br label %121

121:                                              ; preds = %120, %111
  %122 = load ptr, ptr %95, align 4
  %123 = getelementptr i8, ptr %122, i32 %114
  tail call void @msm_writel(i32 noundef %117, ptr noundef %123) #2
  switch i32 %47, label %136 [
    i32 0, label %124
    i32 1, label %127
    i32 2, label %130
    i32 3, label %133
  ]

124:                                              ; preds = %121
  %125 = load ptr, ptr @mdp5_cfg, align 4
  %126 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %125, i32 0, i32 11, i32 1
  br label %137

127:                                              ; preds = %121
  %128 = load ptr, ptr @mdp5_cfg, align 4
  %129 = getelementptr %struct.mdp5_cfg_hw, ptr %128, i32 0, i32 11, i32 1, i32 1
  br label %137

130:                                              ; preds = %121
  %131 = load ptr, ptr @mdp5_cfg, align 4
  %132 = getelementptr %struct.mdp5_cfg_hw, ptr %131, i32 0, i32 11, i32 1, i32 2
  br label %137

133:                                              ; preds = %121
  %134 = load ptr, ptr @mdp5_cfg, align 4
  %135 = getelementptr %struct.mdp5_cfg_hw, ptr %134, i32 0, i32 11, i32 1, i32 3
  br label %137

136:                                              ; preds = %121
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1322, 0\0A.popsection", ""() #2, !srcloc !8
  unreachable

137:                                              ; preds = %133, %130, %127, %124
  %138 = phi ptr [ %135, %133 ], [ %132, %130 ], [ %129, %127 ], [ %126, %124 ]
  %139 = load i32, ptr %138, align 4
  %140 = add i32 %139, 16
  %141 = load i16, ptr %19, align 2
  %142 = zext i16 %141 to i32
  %143 = load i32, ptr %90, align 8
  %144 = icmp slt i32 %143, 1
  br i1 %144, label %145, label %146, !prof !9

145:                                              ; preds = %137
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 169, i32 noundef 9, ptr noundef null) #2
  br label %146

146:                                              ; preds = %145, %137
  %147 = load ptr, ptr %95, align 4
  %148 = getelementptr i8, ptr %147, i32 %140
  tail call void @msm_writel(i32 noundef %142, ptr noundef %148) #2
  switch i32 %47, label %161 [
    i32 0, label %149
    i32 1, label %152
    i32 2, label %155
    i32 3, label %158
  ]

149:                                              ; preds = %146
  %150 = load ptr, ptr @mdp5_cfg, align 4
  %151 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %150, i32 0, i32 11, i32 1
  br label %162

152:                                              ; preds = %146
  %153 = load ptr, ptr @mdp5_cfg, align 4
  %154 = getelementptr %struct.mdp5_cfg_hw, ptr %153, i32 0, i32 11, i32 1, i32 1
  br label %162

155:                                              ; preds = %146
  %156 = load ptr, ptr @mdp5_cfg, align 4
  %157 = getelementptr %struct.mdp5_cfg_hw, ptr %156, i32 0, i32 11, i32 1, i32 2
  br label %162

158:                                              ; preds = %146
  %159 = load ptr, ptr @mdp5_cfg, align 4
  %160 = getelementptr %struct.mdp5_cfg_hw, ptr %159, i32 0, i32 11, i32 1, i32 3
  br label %162

161:                                              ; preds = %146
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1322, 0\0A.popsection", ""() #2, !srcloc !8
  unreachable

162:                                              ; preds = %158, %155, %152, %149
  %163 = phi ptr [ %160, %158 ], [ %157, %155 ], [ %154, %152 ], [ %151, %149 ]
  %164 = load i32, ptr %163, align 4
  %165 = add i32 %164, 32
  %166 = load i16, ptr %19, align 2
  %167 = zext i16 %166 to i32
  %168 = add nuw nsw i32 %167, 1
  %169 = load i32, ptr %90, align 8
  %170 = icmp slt i32 %169, 1
  br i1 %170, label %171, label %172, !prof !9

171:                                              ; preds = %162
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 169, i32 noundef 9, ptr noundef null) #2
  br label %172

172:                                              ; preds = %171, %162
  %173 = load ptr, ptr %95, align 4
  %174 = getelementptr i8, ptr %173, i32 %165
  tail call void @msm_writel(i32 noundef %168, ptr noundef %174) #2
  switch i32 %47, label %187 [
    i32 0, label %175
    i32 1, label %178
    i32 2, label %181
    i32 3, label %184
  ]

175:                                              ; preds = %172
  %176 = load ptr, ptr @mdp5_cfg, align 4
  %177 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %176, i32 0, i32 11, i32 1
  br label %188

178:                                              ; preds = %172
  %179 = load ptr, ptr @mdp5_cfg, align 4
  %180 = getelementptr %struct.mdp5_cfg_hw, ptr %179, i32 0, i32 11, i32 1, i32 1
  br label %188

181:                                              ; preds = %172
  %182 = load ptr, ptr @mdp5_cfg, align 4
  %183 = getelementptr %struct.mdp5_cfg_hw, ptr %182, i32 0, i32 11, i32 1, i32 2
  br label %188

184:                                              ; preds = %172
  %185 = load ptr, ptr @mdp5_cfg, align 4
  %186 = getelementptr %struct.mdp5_cfg_hw, ptr %185, i32 0, i32 11, i32 1, i32 3
  br label %188

187:                                              ; preds = %172
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1322, 0\0A.popsection", ""() #2, !srcloc !8
  unreachable

188:                                              ; preds = %184, %181, %178, %175
  %189 = phi ptr [ %186, %184 ], [ %183, %181 ], [ %180, %178 ], [ %177, %175 ]
  %190 = load i32, ptr %189, align 4
  %191 = add i32 %190, 28
  %192 = load i16, ptr %19, align 2
  %193 = zext i16 %192 to i32
  %194 = load i32, ptr %90, align 8
  %195 = icmp slt i32 %194, 1
  br i1 %195, label %196, label %197, !prof !9

196:                                              ; preds = %188
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 169, i32 noundef 9, ptr noundef null) #2
  br label %197

197:                                              ; preds = %196, %188
  %198 = load ptr, ptr %95, align 4
  %199 = getelementptr i8, ptr %198, i32 %191
  tail call void @msm_writel(i32 noundef %193, ptr noundef %199) #2
  switch i32 %47, label %212 [
    i32 0, label %200
    i32 1, label %203
    i32 2, label %206
    i32 3, label %209
  ]

200:                                              ; preds = %197
  %201 = load ptr, ptr @mdp5_cfg, align 4
  %202 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %201, i32 0, i32 11, i32 1
  br label %213

203:                                              ; preds = %197
  %204 = load ptr, ptr @mdp5_cfg, align 4
  %205 = getelementptr %struct.mdp5_cfg_hw, ptr %204, i32 0, i32 11, i32 1, i32 1
  br label %213

206:                                              ; preds = %197
  %207 = load ptr, ptr @mdp5_cfg, align 4
  %208 = getelementptr %struct.mdp5_cfg_hw, ptr %207, i32 0, i32 11, i32 1, i32 2
  br label %213

209:                                              ; preds = %197
  %210 = load ptr, ptr @mdp5_cfg, align 4
  %211 = getelementptr %struct.mdp5_cfg_hw, ptr %210, i32 0, i32 11, i32 1, i32 3
  br label %213

212:                                              ; preds = %197
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1322, 0\0A.popsection", ""() #2, !srcloc !8
  unreachable

213:                                              ; preds = %209, %206, %203, %200
  %214 = phi ptr [ %211, %209 ], [ %208, %206 ], [ %205, %203 ], [ %202, %200 ]
  %215 = load i32, ptr %214, align 4
  %216 = add i32 %215, 24
  %217 = load i32, ptr %90, align 8
  %218 = icmp slt i32 %217, 1
  br i1 %218, label %219, label %220, !prof !9

219:                                              ; preds = %213
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 169, i32 noundef 9, ptr noundef null) #2
  br label %220

220:                                              ; preds = %219, %213
  %221 = load ptr, ptr %95, align 4
  %222 = getelementptr i8, ptr %221, i32 %216
  tail call void @msm_writel(i32 noundef 262148, ptr noundef %222) #2
  switch i32 %47, label %235 [
    i32 0, label %223
    i32 1, label %226
    i32 2, label %229
    i32 3, label %232
  ]

223:                                              ; preds = %220
  %224 = load ptr, ptr @mdp5_cfg, align 4
  %225 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %224, i32 0, i32 11, i32 1
  br label %236

226:                                              ; preds = %220
  %227 = load ptr, ptr @mdp5_cfg, align 4
  %228 = getelementptr %struct.mdp5_cfg_hw, ptr %227, i32 0, i32 11, i32 1, i32 1
  br label %236

229:                                              ; preds = %220
  %230 = load ptr, ptr @mdp5_cfg, align 4
  %231 = getelementptr %struct.mdp5_cfg_hw, ptr %230, i32 0, i32 11, i32 1, i32 2
  br label %236

232:                                              ; preds = %220
  %233 = load ptr, ptr @mdp5_cfg, align 4
  %234 = getelementptr %struct.mdp5_cfg_hw, ptr %233, i32 0, i32 11, i32 1, i32 3
  br label %236

235:                                              ; preds = %220
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1322, 0\0A.popsection", ""() #2, !srcloc !8
  unreachable

236:                                              ; preds = %232, %229, %226, %223
  %237 = phi ptr [ %234, %232 ], [ %231, %229 ], [ %228, %226 ], [ %225, %223 ]
  %238 = load i32, ptr %237, align 4
  %239 = add i32 %238, 48
  %240 = load i32, ptr %90, align 8
  %241 = icmp slt i32 %240, 1
  br i1 %241, label %242, label %243, !prof !9

242:                                              ; preds = %236
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 169, i32 noundef 9, ptr noundef null) #2
  br label %243

243:                                              ; preds = %242, %236
  %244 = load ptr, ptr %95, align 4
  %245 = getelementptr i8, ptr %244, i32 %239
  tail call void @msm_writel(i32 noundef 0, ptr noundef %245) #2
  br label %246

246:                                              ; preds = %243, %68, %60, %53
  %247 = load ptr, ptr %43, align 4
  tail call void @mdp5_crtc_set_pipeline(ptr noundef %247) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_vrefresh(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdp5_crtc_set_pipeline(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mdp5_cmd_encoder_disable(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.mdp5_encoder, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.mdp5_encoder, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_encoder, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = tail call ptr @mdp5_crtc_get_pipeline(ptr noundef %7) #2
  %9 = getelementptr inbounds %struct.mdp5_encoder, ptr %0, i32 0, i32 2
  %10 = load i8, ptr %9, align 4, !range !10
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %13, !prof !9

12:                                               ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 129, i32 noundef 9, ptr noundef null) #2
  br label %52

13:                                               ; preds = %1
  %14 = load ptr, ptr %0, align 4
  %15 = getelementptr inbounds %struct.drm_device, ptr %14, i32 0, i32 5
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.msm_drm_private, ptr %16, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = load ptr, ptr %6, align 4
  %20 = tail call ptr @mdp5_crtc_get_mixer(ptr noundef %19) #2
  %21 = getelementptr inbounds %struct.mdp5_hw_mixer, ptr %20, i32 0, i32 4
  %22 = load i32, ptr %21, align 4
  switch i32 %22, label %35 [
    i32 0, label %23
    i32 1, label %26
    i32 2, label %29
    i32 3, label %32
  ]

23:                                               ; preds = %13
  %24 = load ptr, ptr @mdp5_cfg, align 4
  %25 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %24, i32 0, i32 11, i32 1
  br label %36

26:                                               ; preds = %13
  %27 = load ptr, ptr @mdp5_cfg, align 4
  %28 = getelementptr %struct.mdp5_cfg_hw, ptr %27, i32 0, i32 11, i32 1, i32 1
  br label %36

29:                                               ; preds = %13
  %30 = load ptr, ptr @mdp5_cfg, align 4
  %31 = getelementptr %struct.mdp5_cfg_hw, ptr %30, i32 0, i32 11, i32 1, i32 2
  br label %36

32:                                               ; preds = %13
  %33 = load ptr, ptr @mdp5_cfg, align 4
  %34 = getelementptr %struct.mdp5_cfg_hw, ptr %33, i32 0, i32 11, i32 1, i32 3
  br label %36

35:                                               ; preds = %13
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1322, 0\0A.popsection", ""() #2, !srcloc !8
  unreachable

36:                                               ; preds = %32, %29, %26, %23
  %37 = phi ptr [ %34, %32 ], [ %31, %29 ], [ %28, %26 ], [ %25, %23 ]
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.mdp5_kms, ptr %18, i32 0, i32 26
  %40 = load i32, ptr %39, align 8
  %41 = icmp slt i32 %40, 1
  br i1 %41, label %42, label %43, !prof !9

42:                                               ; preds = %36
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 169, i32 noundef 9, ptr noundef null) #2
  br label %43

43:                                               ; preds = %42, %36
  %44 = getelementptr inbounds %struct.mdp5_kms, ptr %18, i32 0, i32 15
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr i8, ptr %45, i32 %38
  tail call void @msm_writel(i32 noundef 0, ptr noundef %46) #2
  %47 = getelementptr inbounds %struct.mdp5_kms, ptr %18, i32 0, i32 22
  %48 = load ptr, ptr %47, align 8
  tail call void @clk_disable(ptr noundef %48) #2
  tail call void @clk_unprepare(ptr noundef %48) #2
  %49 = tail call i32 @mdp5_ctl_set_encoder_state(ptr noundef %3, ptr noundef %8, i1 noundef zeroext false) #2
  %50 = tail call i32 @mdp_ctl_flush_mask_encoder(ptr noundef %5) #2
  %51 = tail call i32 @mdp5_ctl_commit(ptr noundef %3, ptr noundef %8, i32 noundef %50, i1 noundef zeroext true) #2
  store i8 0, ptr %9, align 4
  br label %52

52:                                               ; preds = %43, %12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdp5_crtc_get_pipeline(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdp5_ctl_set_encoder_state(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdp5_ctl_commit(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdp_ctl_flush_mask_encoder(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mdp5_cmd_encoder_enable(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.mdp5_encoder, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.mdp5_encoder, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_encoder, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = tail call ptr @mdp5_crtc_get_pipeline(ptr noundef %7) #2
  %9 = getelementptr inbounds %struct.mdp5_encoder, ptr %0, i32 0, i32 2
  %10 = load i8, ptr %9, align 4, !range !10
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %13, label %12, !prof !11

12:                                               ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 147, i32 noundef 9, ptr noundef null) #2
  br label %73

13:                                               ; preds = %1
  %14 = load ptr, ptr %0, align 4
  %15 = getelementptr inbounds %struct.drm_device, ptr %14, i32 0, i32 5
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.msm_drm_private, ptr %16, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = load ptr, ptr %6, align 4
  %20 = tail call ptr @mdp5_crtc_get_mixer(ptr noundef %19) #2
  %21 = getelementptr inbounds %struct.mdp5_hw_mixer, ptr %20, i32 0, i32 4
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.mdp5_kms, ptr %18, i32 0, i32 22
  %24 = load ptr, ptr %23, align 8
  %25 = tail call i32 @clk_round_rate(ptr noundef %24, i32 noundef 19200000) #2
  %26 = tail call i32 @clk_set_rate(ptr noundef %24, i32 noundef %25) #2
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %13
  %29 = load ptr, ptr %0, align 4
  %30 = getelementptr inbounds %struct.drm_device, ptr %29, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %31, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.6, i32 noundef %26) #2
  br label %73

32:                                               ; preds = %13
  %33 = load ptr, ptr %23, align 8
  %34 = tail call i32 @clk_prepare(ptr noundef %33) #2
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = tail call i32 @clk_enable(ptr noundef %33) #2
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %36
  tail call void @clk_unprepare(ptr noundef %33) #2
  br label %40

40:                                               ; preds = %39, %32
  %41 = phi i32 [ %37, %39 ], [ %34, %32 ]
  %42 = load ptr, ptr %0, align 4
  %43 = getelementptr inbounds %struct.drm_device, ptr %42, i32 0, i32 2
  %44 = load ptr, ptr %43, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %44, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.7, i32 noundef %41) #2
  br label %73

45:                                               ; preds = %36
  switch i32 %22, label %58 [
    i32 0, label %46
    i32 1, label %49
    i32 2, label %52
    i32 3, label %55
  ]

46:                                               ; preds = %45
  %47 = load ptr, ptr @mdp5_cfg, align 4
  %48 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %47, i32 0, i32 11, i32 1
  br label %59

49:                                               ; preds = %45
  %50 = load ptr, ptr @mdp5_cfg, align 4
  %51 = getelementptr %struct.mdp5_cfg_hw, ptr %50, i32 0, i32 11, i32 1, i32 1
  br label %59

52:                                               ; preds = %45
  %53 = load ptr, ptr @mdp5_cfg, align 4
  %54 = getelementptr %struct.mdp5_cfg_hw, ptr %53, i32 0, i32 11, i32 1, i32 2
  br label %59

55:                                               ; preds = %45
  %56 = load ptr, ptr @mdp5_cfg, align 4
  %57 = getelementptr %struct.mdp5_cfg_hw, ptr %56, i32 0, i32 11, i32 1, i32 3
  br label %59

58:                                               ; preds = %45
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1322, 0\0A.popsection", ""() #2, !srcloc !8
  unreachable

59:                                               ; preds = %55, %52, %49, %46
  %60 = phi ptr [ %57, %55 ], [ %54, %52 ], [ %51, %49 ], [ %48, %46 ]
  %61 = load i32, ptr %60, align 4
  %62 = getelementptr inbounds %struct.mdp5_kms, ptr %18, i32 0, i32 26
  %63 = load i32, ptr %62, align 8
  %64 = icmp slt i32 %63, 1
  br i1 %64, label %65, label %66, !prof !9

65:                                               ; preds = %59
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 169, i32 noundef 9, ptr noundef null) #2
  br label %66

66:                                               ; preds = %65, %59
  %67 = getelementptr inbounds %struct.mdp5_kms, ptr %18, i32 0, i32 15
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr i8, ptr %68, i32 %61
  tail call void @msm_writel(i32 noundef 1, ptr noundef %69) #2
  %70 = tail call i32 @mdp_ctl_flush_mask_encoder(ptr noundef %5) #2
  %71 = tail call i32 @mdp5_ctl_commit(ptr noundef %3, ptr noundef %8, i32 noundef %70, i1 noundef zeroext true) #2
  %72 = tail call i32 @mdp5_ctl_set_encoder_state(ptr noundef %3, ptr noundef %8, i1 noundef zeroext true) #2
  store i8 1, ptr %9, align 4
  br label %73

73:                                               ; preds = %66, %40, %28, %12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mdp5_cmd_encoder_set_split_display(ptr noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %44

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
  switch i32 %15, label %44 [
    i32 1, label %17
    i32 2, label %16
  ]

16:                                               ; preds = %6
  br label %17

17:                                               ; preds = %16, %6
  %18 = phi i32 [ 18, %16 ], [ 258, %6 ]
  %19 = getelementptr inbounds %struct.mdp5_kms, ptr %11, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.platform_device, ptr %20, i32 0, i32 3
  %22 = tail call i32 @__pm_runtime_resume(ptr noundef %21, i32 noundef 4) #2
  %23 = getelementptr inbounds %struct.mdp5_kms, ptr %11, i32 0, i32 26
  %24 = load i32, ptr %23, align 8
  %25 = icmp slt i32 %24, 1
  br i1 %25, label %26, label %27, !prof !9

26:                                               ; preds = %17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 169, i32 noundef 9, ptr noundef null) #2
  br label %27

27:                                               ; preds = %26, %17
  %28 = getelementptr inbounds %struct.mdp5_kms, ptr %11, i32 0, i32 15
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr i8, ptr %29, i32 760
  tail call void @msm_writel(i32 noundef %18, ptr noundef %30) #2
  %31 = load i32, ptr %23, align 8
  %32 = icmp slt i32 %31, 1
  br i1 %32, label %33, label %34, !prof !9

33:                                               ; preds = %27
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 169, i32 noundef 9, ptr noundef null) #2
  br label %34

34:                                               ; preds = %33, %27
  %35 = load ptr, ptr %28, align 4
  %36 = getelementptr i8, ptr %35, i32 1008
  tail call void @msm_writel(i32 noundef 2, ptr noundef %36) #2
  %37 = load i32, ptr %23, align 8
  %38 = icmp slt i32 %37, 1
  br i1 %38, label %39, label %40, !prof !9

39:                                               ; preds = %34
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 169, i32 noundef 9, ptr noundef null) #2
  br label %40

40:                                               ; preds = %39, %34
  %41 = load ptr, ptr %28, align 4
  %42 = getelementptr i8, ptr %41, i32 756
  tail call void @msm_writel(i32 noundef 1, ptr noundef %42) #2
  %43 = tail call i32 @__pm_runtime_idle(ptr noundef %21, i32 noundef 4) #2
  br label %44

44:                                               ; preds = %40, %6, %2
  %45 = phi i32 [ 0, %40 ], [ -22, %2 ], [ -22, %6 ]
  ret i32 %45
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdp5_crtc_get_mixer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_writel(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }

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
!8 = !{i64 2155679080, i64 2155679586, i64 2155679117, i64 2155679173, i64 2155679207, i64 2155679231, i64 2155679272, i64 2155679293, i64 2155679321, i64 2155679355}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i8 0, i8 2}
!11 = !{!"branch_weights", i32 2000, i32 1}
